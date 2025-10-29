/*
 reference for simple sdl2 + cairo example
  https://github.com/tsuu32/sdl2-cairo-example/blob/master/sdl2-cairo.c

  init-result 0
window = #<pointer 0x5c51dcfe1b00>
created render success !
window-surface #<pointer 0x5c51ddf83ac0> : pixelformat-format 370546692 : pixels #<pointer 0x760d0523f000> : width 640 : height 480 : pitch 2560 
window surface : pixelformat name SDL_PIXELFORMAT_RGB888 
surface ok
surface #<pointer 0x5c51ddfe0380> : pixelformat-format 370546692 : pixels #<pointer 0x760d05112020> : width 640 : height 480 : pitch 2560 
surface : pixelformat name SDL_PIXELFORMAT_RGB888 
reference cairo argb32 is SDL_PIXELFORMAT_BGRA8888 
reference cairo rgb24 is SDL_PIXELFORMAT_RGB24 
cairo surface #<pointer 0x760d1417fba0>
starting to clear screen 
screen render clear 


 */

#include <stdio.h>
#include <stdbool.h>
#include <SDL2/SDL.h>
#include <cairo/cairo.h>

int
main(int argc, char *argv[])
{

  
  printf("SDL_PIXELFORMAT_RGB888 %d\n " , SDL_PIXELFORMAT_RGB888);
  printf("SDL_PIXELFORMAT_ARGB32 %d\n " , SDL_PIXELFORMAT_ARGB32);
  printf("SDL_PIXELFORMAT_RGB24 %d\n " , SDL_PIXELFORMAT_RGB24);
  if (SDL_PIXELFORMAT_ARGB32 == 377888772){
    printf("sdl pixel argb32 value %d is confirmed\n" , 377888772);
  }
  if (SDL_PIXELFORMAT_RGB24 == 386930691){
    printf("sdl pixel argb32 value %d is confirmed\n" , 386930691);
  }
  

  printf("CAIRO_FORMAT_RGB24 %d\n " , CAIRO_FORMAT_RGB24);
  printf("CAIRO_FORMAT_ARGB32 %d\n " , CAIRO_FORMAT_ARGB32);
  
  
  
  SDL_Init(SDL_INIT_VIDEO);

  SDL_Window *window = SDL_CreateWindow("An SDL2 window",
                                        SDL_WINDOWPOS_UNDEFINED,
                                        SDL_WINDOWPOS_UNDEFINED,
                                        640,
                                        480,
                                        SDL_WINDOW_SHOWN | SDL_WINDOW_ALLOW_HIGHDPI);

  SDL_Renderer *renderer = SDL_CreateRenderer(window,
                                              -1,
                                              SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

  int window_width;
  int window_height;
  SDL_GetWindowSize(window, &window_width, &window_height);

  printf("window_width=%d\n"
         "window_height=%d\n",
         window_width, window_height);

  int renderer_width;
  int renderer_height;
  SDL_GetRendererOutputSize(renderer, &renderer_width, &renderer_height);

  printf("renderer_width=%d\n"
         "renderer_height=%d\n",
         renderer_width, renderer_height);

  int cairo_x_multiplier = renderer_width / window_width;
  int cairo_y_multiplier = renderer_height / window_height;

  SDL_Surface *sdl_surface = SDL_CreateRGBSurface(0,
                                                  renderer_width,
                                                  renderer_height,
                                                  32,
                                                  0x00ff0000,
                                                  0x0000ff00,
                                                  0x000000ff,
                                                  0);

  printf("sdl_surface->w=%d\n"
         "sdl_surface->h=%d\n"
         "sdl_surface->pitch=%d\n",
         sdl_surface->w, sdl_surface->h, sdl_surface->pitch);
  printf("sdl_surface->format->format=%s\n",
         SDL_GetPixelFormatName(sdl_surface->format->format));

  cairo_surface_t *cr_surface = cairo_image_surface_create_for_data((unsigned char *)sdl_surface->pixels,
                                                                       CAIRO_FORMAT_RGB24,
                                                                       sdl_surface->w,
                                                                       sdl_surface->h,
                                                                       sdl_surface->pitch);

  cairo_surface_set_device_scale(cr_surface, cairo_x_multiplier, cairo_y_multiplier);

  cairo_t *cr = cairo_create(cr_surface);

  SDL_SetRenderDrawColor(renderer, 0, 0, 0, 0);
  SDL_RenderClear(renderer);

  // White background with SDL2 API
  // SDL_FillRect(sdl_surface, NULL, SDL_MapRGB(sdl_surface->format, 255, 255, 255));

  // White background with cairo API
  cairo_set_source_rgba(cr, 1, 1, 1, 1.0);
  cairo_rectangle(cr, 0, 0, 640, 480);
  cairo_fill(cr);

  double xc = 320.0;
  double yc = 240.0;
  double radius = 200.0;
  double angle1 = 45.0  * (M_PI/180.0);
  double angle2 = 180.0 * (M_PI/180.0);

  cairo_set_source_rgba(cr, 0, 0, 0, 1.0);
  cairo_set_line_width(cr, 10.0);
  cairo_arc(cr, xc, yc, radius, angle1, angle2);
  cairo_stroke(cr);

  cairo_set_source_rgba(cr, 1, 0.2, 0.2, 0.6);
  cairo_set_line_width(cr, 6.0);

  cairo_arc(cr, xc, yc, 10.0, 0, 2*M_PI);
  cairo_fill(cr);

  cairo_arc(cr, xc, yc, radius, angle1, angle1);
  cairo_line_to(cr, xc, yc);
  cairo_arc(cr, xc, yc, radius, angle2, angle2);
  cairo_line_to(cr, xc, yc);
  cairo_stroke(cr);

  SDL_Texture *texture = SDL_CreateTextureFromSurface(renderer, sdl_surface);
  SDL_FreeSurface(sdl_surface);

  SDL_RenderCopy(renderer, texture, NULL, NULL);
  SDL_RenderPresent(renderer);

  bool done = false;
  while (!done) {
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
      switch (event.type) {
      case SDL_QUIT:
        done = true;
        break;
      default:
        break;
      }
    }
    SDL_Delay(100);
  }

  cairo_destroy(cr);
  cairo_surface_destroy(cr_surface);

  SDL_DestroyTexture(texture);
  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);

  SDL_Quit();

  return 0;
}
