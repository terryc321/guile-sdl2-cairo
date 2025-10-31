
img_linked_version
img_init
img_quit
img_loadtyped_rw
img_load
img_load_rw
img_loadtexture
img_loadtexture_rw
img_loadtexturetyped_rw
img_isavif
img_isico
img_iscur
img_isbmp
img_isgif
img_isjpg
img_isjxl
img_islbm
img_ispcx
img_ispng
img_ispnm
img_issvg
img_isqoi
img_istif
img_isxcf
img_isxpm
img_isxv
img_iswebp
img_loadavif_rw
img_loadico_rw
img_loadcur_rw
img_loadbmp_rw
img_loadgif_rw
img_loadjpg_rw
img_loadjxl_rw
img_loadlbm_rw
img_loadpcx_rw
img_loadpng_rw
img_loadpnm_rw
img_loadsvg_rw
img_loadqoi_rw
img_loadtga_rw
img_loadtif_rw
img_loadxcf_rw
img_loadxpm_rw
img_loadxv_rw
img_loadwebp_rw
img_loadsizedsvg_rw
img_readxpmfromarray
img_readxpmfromarraytorgb888
img_savepng
img_savepng_rw
img_savejpg
img_savejpg_rw
img_loadanimation
img_loadanimation_rw
img_loadanimationtyped_rw
img_freeanimation
img_loadgifanimation_rw
img_loadwebpanimation_rw


;; definition 116 from /usr/include/x86_64-linux-gnu/sys/select.h:102:12
(define select
   (foreign-library-function "libSDL2_image" "select" 
     #:return-type int       #:arg-types (int '* '* '* '* ))


;; definition 117 from /usr/include/x86_64-linux-gnu/sys/select.h:127:12
(define pselect
   (foreign-library-function "libSDL2_image" "pselect" 
     #:return-type int       #:arg-types (int '* '* '* '* '* ))


;; definition 174 from /usr/include/stdio.h:158:12
(define remove
   (foreign-library-function "libSDL2_image" "remove" 
     #:return-type int       #:arg-types ('* ))


;; definition 175 from /usr/include/stdio.h:160:12
(define rename
   (foreign-library-function "libSDL2_image" "rename" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 176 from /usr/include/stdio.h:164:12
(define renameat
   (foreign-library-function "libSDL2_image" "renameat" 
     #:return-type int       #:arg-types (int '* int '* ))


;; definition 177 from /usr/include/stdio.h:187:12
(define fclose
   (foreign-library-function "libSDL2_image" "fclose" 
     #:return-type int       #:arg-types ('* ))




;; definition 181 from /usr/include/stdio.h:231:14
(define tempnam
   (foreign-library-function "libSDL2_image" "tempnam" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 182 from /usr/include/stdio.h:239:12
(define fflush
   (foreign-library-function "libSDL2_image" "fflush" 
     #:return-type int       #:arg-types ('* ))


;; definition 183 from /usr/include/stdio.h:248:12
(define fflush-unlocked
   (foreign-library-function "libSDL2_image" "fflush_unlocked" 
     #:return-type int       #:arg-types ('* ))


;; definition 184 from /usr/include/stdio.h:267:14
(define fopen
   (foreign-library-function "libSDL2_image" "fopen" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 185 from /usr/include/stdio.h:274:14
(define freopen
   (foreign-library-function "libSDL2_image" "freopen" 
     #:return-type '*       #:arg-types ('* '* '* ))


;; definition 186 from /usr/include/stdio.h:302:14
(define fdopen
   (foreign-library-function "libSDL2_image" "fdopen" 
     #:return-type '*       #:arg-types (int '* ))


;; definition 189 from /usr/include/stdio.h:323:14
(define open-memstream
   (foreign-library-function "libSDL2_image" "open_memstream" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 190 from /usr/include/stdio.h:337:13
(define setbuf
   (foreign-library-function "libSDL2_image" "setbuf" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 193 from /usr/include/stdio.h:352:13
(define setlinebuf
   (foreign-library-function "libSDL2_image" "setlinebuf" 
     #:return-type void       #:arg-types ('* ))


;; definition 194 from /usr/include/stdio.h:360:12
(define fprintf
   (foreign-library-function "libSDL2_image" "fprintf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 195 from /usr/include/stdio.h:366:12
(define printf
   (foreign-library-function "libSDL2_image" "printf" 
     #:return-type int       #:arg-types ('* ))


;; definition 196 from /usr/include/stdio.h:368:12
(define sprintf
   (foreign-library-function "libSDL2_image" "sprintf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 203 from /usr/include/stdio.h:403:12
(define --asprintf
   (foreign-library-function "libSDL2_image" "__asprintf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 204 from /usr/include/stdio.h:406:12
(define asprintf
   (foreign-library-function "libSDL2_image" "asprintf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 206 from /usr/include/stdio.h:416:12
(define dprintf
   (foreign-library-function "libSDL2_image" "dprintf" 
     #:return-type int       #:arg-types (int '* ))


;; definition 207 from /usr/include/stdio.h:425:12
(define fscanf
   (foreign-library-function "libSDL2_image" "fscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 208 from /usr/include/stdio.h:431:12
(define scanf
   (foreign-library-function "libSDL2_image" "scanf" 
     #:return-type int       #:arg-types ('* ))


;; definition 209 from /usr/include/stdio.h:433:12
(define sscanf
   (foreign-library-function "libSDL2_image" "sscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 216 from /usr/include/stdio.h:466:12 <Spelling=/usr/include/stdio.h:466:24>
(define fscanf
   (foreign-library-function "libSDL2_image" "fscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 217 from /usr/include/stdio.h:469:12 <Spelling=/usr/include/stdio.h:469:24>
(define scanf
   (foreign-library-function "libSDL2_image" "scanf" 
     #:return-type int       #:arg-types ('* ))


;; definition 218 from /usr/include/stdio.h:471:12 <Spelling=/usr/include/stdio.h:471:28>
(define sscanf
   (foreign-library-function "libSDL2_image" "sscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 225 from /usr/include/stdio.h:578:12
(define fgetc
   (foreign-library-function "libSDL2_image" "fgetc" 
     #:return-type int       #:arg-types ('* ))


;; definition 226 from /usr/include/stdio.h:579:12
(define getc
   (foreign-library-function "libSDL2_image" "getc" 
     #:return-type int       #:arg-types ('* ))




;; definition 228 from /usr/include/stdio.h:592:12
(define getc-unlocked
   (foreign-library-function "libSDL2_image" "getc_unlocked" 
     #:return-type int       #:arg-types ('* ))




;; definition 230 from /usr/include/stdio.h:603:12
(define fgetc-unlocked
   (foreign-library-function "libSDL2_image" "fgetc_unlocked" 
     #:return-type int       #:arg-types ('* ))


;; definition 231 from /usr/include/stdio.h:611:12
(define fputc
   (foreign-library-function "libSDL2_image" "fputc" 
     #:return-type int       #:arg-types (int '* ))


;; definition 232 from /usr/include/stdio.h:612:12
(define putc
   (foreign-library-function "libSDL2_image" "putc" 
     #:return-type int       #:arg-types (int '* ))


;; definition 233 from /usr/include/stdio.h:618:12
(define putchar
   (foreign-library-function "libSDL2_image" "putchar" 
     #:return-type int       #:arg-types (int ))


;; definition 234 from /usr/include/stdio.h:627:12
(define fputc-unlocked
   (foreign-library-function "libSDL2_image" "fputc_unlocked" 
     #:return-type int       #:arg-types (int '* ))


;; definition 235 from /usr/include/stdio.h:635:12
(define putc-unlocked
   (foreign-library-function "libSDL2_image" "putc_unlocked" 
     #:return-type int       #:arg-types (int '* ))


;; definition 236 from /usr/include/stdio.h:636:12
(define putchar-unlocked
   (foreign-library-function "libSDL2_image" "putchar_unlocked" 
     #:return-type int       #:arg-types (int ))


;; definition 237 from /usr/include/stdio.h:643:12
(define getw
   (foreign-library-function "libSDL2_image" "getw" 
     #:return-type int       #:arg-types ('* ))


;; definition 238 from /usr/include/stdio.h:646:12
(define putw
   (foreign-library-function "libSDL2_image" "putw" 
     #:return-type int       #:arg-types (int '* ))


;; definition 239 from /usr/include/stdio.h:654:14
(define fgets
   (foreign-library-function "libSDL2_image" "fgets" 
     #:return-type '*       #:arg-types ('* int '* ))


;; definition 243 from /usr/include/stdio.h:707:12
(define fputs
   (foreign-library-function "libSDL2_image" "fputs" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 244 from /usr/include/stdio.h:714:12
(define puts
   (foreign-library-function "libSDL2_image" "puts" 
     #:return-type int       #:arg-types ('* ))


;; definition 245 from /usr/include/stdio.h:721:12
(define ungetc
   (foreign-library-function "libSDL2_image" "ungetc" 
     #:return-type int       #:arg-types (int '* ))


;; definition 250 from /usr/include/stdio.h:769:12
(define fseek
   (foreign-library-function "libSDL2_image" "fseek" 
     #:return-type int       #:arg-types ('* long int ))


;; definition 251 from /usr/include/stdio.h:775:17
(define ftell
   (foreign-library-function "libSDL2_image" "ftell" 
     #:return-type long       #:arg-types ('* ))


;; definition 252 from /usr/include/stdio.h:780:13
(define rewind
   (foreign-library-function "libSDL2_image" "rewind" 
     #:return-type void       #:arg-types ('* ))


;; definition 255 from /usr/include/stdio.h:819:12
(define fgetpos
   (foreign-library-function "libSDL2_image" "fgetpos" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 256 from /usr/include/stdio.h:825:12
(define fsetpos
   (foreign-library-function "libSDL2_image" "fsetpos" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 257 from /usr/include/stdio.h:850:13
(define clearerr
   (foreign-library-function "libSDL2_image" "clearerr" 
     #:return-type void       #:arg-types ('* ))


;; definition 258 from /usr/include/stdio.h:852:12
(define feof
   (foreign-library-function "libSDL2_image" "feof" 
     #:return-type int       #:arg-types ('* ))


;; definition 259 from /usr/include/stdio.h:854:12
(define ferror
   (foreign-library-function "libSDL2_image" "ferror" 
     #:return-type int       #:arg-types ('* ))


;; definition 260 from /usr/include/stdio.h:858:13
(define clearerr-unlocked
   (foreign-library-function "libSDL2_image" "clearerr_unlocked" 
     #:return-type void       #:arg-types ('* ))


;; definition 261 from /usr/include/stdio.h:859:12
(define feof-unlocked
   (foreign-library-function "libSDL2_image" "feof_unlocked" 
     #:return-type int       #:arg-types ('* ))


;; definition 262 from /usr/include/stdio.h:860:12
(define ferror-unlocked
   (foreign-library-function "libSDL2_image" "ferror_unlocked" 
     #:return-type int       #:arg-types ('* ))


;; definition 263 from /usr/include/stdio.h:868:13
(define perror
   (foreign-library-function "libSDL2_image" "perror" 
     #:return-type void       #:arg-types ('* ))


;; definition 264 from /usr/include/stdio.h:873:12
(define fileno
   (foreign-library-function "libSDL2_image" "fileno" 
     #:return-type int       #:arg-types ('* ))


;; definition 265 from /usr/include/stdio.h:878:12
(define fileno-unlocked
   (foreign-library-function "libSDL2_image" "fileno_unlocked" 
     #:return-type int       #:arg-types ('* ))


;; definition 266 from /usr/include/stdio.h:887:12
(define pclose
   (foreign-library-function "libSDL2_image" "pclose" 
     #:return-type int       #:arg-types ('* ))


;; definition 267 from /usr/include/stdio.h:893:14
(define popen
   (foreign-library-function "libSDL2_image" "popen" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 268 from /usr/include/stdio.h:901:14
(define ctermid
   (foreign-library-function "libSDL2_image" "ctermid" 
     #:return-type '*       #:arg-types ('* ))


;; definition 269 from /usr/include/stdio.h:931:13
(define flockfile
   (foreign-library-function "libSDL2_image" "flockfile" 
     #:return-type void       #:arg-types ('* ))


;; definition 270 from /usr/include/stdio.h:935:12
(define ftrylockfile
   (foreign-library-function "libSDL2_image" "ftrylockfile" 
     #:return-type int       #:arg-types ('* ))


;; definition 271 from /usr/include/stdio.h:938:13
(define funlockfile
   (foreign-library-function "libSDL2_image" "funlockfile" 
     #:return-type void       #:arg-types ('* ))


;; definition 272 from /usr/include/stdio.h:949:12
(define --uflow
   (foreign-library-function "libSDL2_image" "__uflow" 
     #:return-type int       #:arg-types ('* ))


;; definition 273 from /usr/include/stdio.h:950:12
(define --overflow
   (foreign-library-function "libSDL2_image" "__overflow" 
     #:return-type int       #:arg-types ('* int ))


;; definition 279 from /usr/include/stdlib.h:102:15
(define atof
   (foreign-library-function "libSDL2_image" "atof" 
     #:return-type double       #:arg-types ('* ))


;; definition 280 from /usr/include/stdlib.h:105:12
(define atoi
   (foreign-library-function "libSDL2_image" "atoi" 
     #:return-type int       #:arg-types ('* ))


;; definition 281 from /usr/include/stdlib.h:108:17
(define atol
   (foreign-library-function "libSDL2_image" "atol" 
     #:return-type long       #:arg-types ('* ))


;; definition 283 from /usr/include/stdlib.h:118:15
(define strtod
   (foreign-library-function "libSDL2_image" "strtod" 
     #:return-type double       #:arg-types ('* '* ))


;; definition 284 from /usr/include/stdlib.h:124:14
(define strtof
   (foreign-library-function "libSDL2_image" "strtof" 
     #:return-type float       #:arg-types ('* '* ))


;; definition 286 from /usr/include/stdlib.h:177:17
(define strtol
   (foreign-library-function "libSDL2_image" "strtol" 
     #:return-type long       #:arg-types ('* '* int ))


;; definition 287 from /usr/include/stdlib.h:181:26
(define strtoul
   (foreign-library-function "libSDL2_image" "strtoul" 
     #:return-type ulong       #:arg-types ('* '* int ))


;; definition 292 from /usr/include/stdlib.h:505:14
(define l64a
   (foreign-library-function "libSDL2_image" "l64a" 
     #:return-type '*       #:arg-types (long ))


;; definition 293 from /usr/include/stdlib.h:508:17
(define a64l
   (foreign-library-function "libSDL2_image" "a64l" 
     #:return-type long       #:arg-types ('* ))




;; definition 295 from /usr/include/stdlib.h:524:13
(define srandom
   (foreign-library-function "libSDL2_image" "srandom" 
     #:return-type void       #:arg-types (uint ))


;; definition 297 from /usr/include/stdlib.h:535:14
(define setstate
   (foreign-library-function "libSDL2_image" "setstate" 
     #:return-type '*       #:arg-types ('* ))


;; definition 299 from /usr/include/stdlib.h:554:12
(define random-r
   (foreign-library-function "libSDL2_image" "random_r" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 300 from /usr/include/stdlib.h:557:12
(define srandom-r
   (foreign-library-function "libSDL2_image" "srandom_r" 
     #:return-type int       #:arg-types (uint '* ))


;; definition 302 from /usr/include/stdlib.h:565:12
(define setstate-r
   (foreign-library-function "libSDL2_image" "setstate_r" 
     #:return-type int       #:arg-types ('* '* ))




;; definition 304 from /usr/include/stdlib.h:575:13
(define srand
   (foreign-library-function "libSDL2_image" "srand" 
     #:return-type void       #:arg-types (uint ))


;; definition 305 from /usr/include/stdlib.h:579:12
(define rand-r
   (foreign-library-function "libSDL2_image" "rand_r" 
     #:return-type int       #:arg-types ('* ))








;; definition 312 from /usr/include/stdlib.h:601:13
(define srand48
   (foreign-library-function "libSDL2_image" "srand48" 
     #:return-type void       #:arg-types (long ))


;; definition 316 from /usr/include/stdlib.h:621:12
(define drand48-r
   (foreign-library-function "libSDL2_image" "drand48_r" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 318 from /usr/include/stdlib.h:628:12
(define lrand48-r
   (foreign-library-function "libSDL2_image" "lrand48_r" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 320 from /usr/include/stdlib.h:637:12
(define mrand48-r
   (foreign-library-function "libSDL2_image" "mrand48_r" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 322 from /usr/include/stdlib.h:646:12
(define srand48-r
   (foreign-library-function "libSDL2_image" "srand48_r" 
     #:return-type int       #:arg-types (long '* ))


;; definition 331 from /usr/include/stdlib.h:687:13
(define free
   (foreign-library-function "libSDL2_image" "free" 
     #:return-type void       #:arg-types ('* ))




;; definition 342 from /usr/include/stdlib.h:756:13
(define exit
   (foreign-library-function "libSDL2_image" "exit" 
     #:return-type void       #:arg-types (int ))


;; definition 343 from /usr/include/stdlib.h:762:13
(define quick-exit
   (foreign-library-function "libSDL2_image" "quick_exit" 
     #:return-type void       #:arg-types (int ))


;; definition 344 from /usr/include/stdlib.h:768:13
(define -Exit
   (foreign-library-function "libSDL2_image" "_exit" 
     #:return-type void       #:arg-types (int ))


;; definition 345 from /usr/include/stdlib.h:773:14
(define getenv
   (foreign-library-function "libSDL2_image" "getenv" 
     #:return-type '*       #:arg-types ('* ))


;; definition 346 from /usr/include/stdlib.h:786:12
(define putenv
   (foreign-library-function "libSDL2_image" "putenv" 
     #:return-type int       #:arg-types ('* ))


;; definition 347 from /usr/include/stdlib.h:792:12
(define setenv
   (foreign-library-function "libSDL2_image" "setenv" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 348 from /usr/include/stdlib.h:796:12
(define unsetenv
   (foreign-library-function "libSDL2_image" "unsetenv" 
     #:return-type int       #:arg-types ('* ))




;; definition 350 from /usr/include/stdlib.h:814:14
(define mktemp
   (foreign-library-function "libSDL2_image" "mktemp" 
     #:return-type '*       #:arg-types ('* ))


;; definition 351 from /usr/include/stdlib.h:827:12
(define mkstemp
   (foreign-library-function "libSDL2_image" "mkstemp" 
     #:return-type int       #:arg-types ('* ))


;; definition 352 from /usr/include/stdlib.h:849:12
(define mkstemps
   (foreign-library-function "libSDL2_image" "mkstemps" 
     #:return-type int       #:arg-types ('* int ))


;; definition 353 from /usr/include/stdlib.h:870:14
(define mkdtemp
   (foreign-library-function "libSDL2_image" "mkdtemp" 
     #:return-type '*       #:arg-types ('* ))


;; definition 354 from /usr/include/stdlib.h:923:12
(define system
   (foreign-library-function "libSDL2_image" "system" 
     #:return-type int       #:arg-types ('* ))


;; definition 355 from /usr/include/stdlib.h:940:14
(define realpath
   (foreign-library-function "libSDL2_image" "realpath" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 359 from /usr/include/stdlib.h:980:12
(define abs
   (foreign-library-function "libSDL2_image" "abs" 
     #:return-type int       #:arg-types (int ))


;; definition 360 from /usr/include/stdlib.h:981:17
(define labs
   (foreign-library-function "libSDL2_image" "labs" 
     #:return-type long       #:arg-types (long ))


;; definition 365 from /usr/include/stdlib.h:1018:14
(define ecvt
   (foreign-library-function "libSDL2_image" "ecvt" 
     #:return-type '*       #:arg-types (double int '* '* ))


;; definition 366 from /usr/include/stdlib.h:1024:14
(define fcvt
   (foreign-library-function "libSDL2_image" "fcvt" 
     #:return-type '*       #:arg-types (double int '* '* ))


;; definition 367 from /usr/include/stdlib.h:1030:14
(define gcvt
   (foreign-library-function "libSDL2_image" "gcvt" 
     #:return-type '*       #:arg-types (double int '* ))


;; definition 377 from /usr/include/stdlib.h:1075:12
(define wctomb
   (foreign-library-function "libSDL2_image" "wctomb" 
     #:return-type int       #:arg-types ('* int ))


;; definition 380 from /usr/include/stdlib.h:1094:12
(define rpmatch
   (foreign-library-function "libSDL2_image" "rpmatch" 
     #:return-type int       #:arg-types ('* ))


;; definition 381 from /usr/include/stdlib.h:1105:12
(define getsubopt
   (foreign-library-function "libSDL2_image" "getsubopt" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 382 from /usr/include/stdlib.h:1151:12
(define getloadavg
   (foreign-library-function "libSDL2_image" "getloadavg" 
     #:return-type int       #:arg-types ('* int ))


;; definition 392 from /usr/include/string.h:141:14
(define strcpy
   (foreign-library-function "libSDL2_image" "strcpy" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 394 from /usr/include/string.h:149:14
(define strcat
   (foreign-library-function "libSDL2_image" "strcat" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 396 from /usr/include/string.h:156:12
(define strcmp
   (foreign-library-function "libSDL2_image" "strcmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 398 from /usr/include/string.h:163:12
(define strcoll
   (foreign-library-function "libSDL2_image" "strcoll" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 406 from /usr/include/string.h:187:14
(define strdup
   (foreign-library-function "libSDL2_image" "strdup" 
     #:return-type '*       #:arg-types ('* ))


;; definition 408 from /usr/include/string.h:246:14
(define strchr
   (foreign-library-function "libSDL2_image" "strchr" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 409 from /usr/include/string.h:273:14
(define strrchr
   (foreign-library-function "libSDL2_image" "strrchr" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 410 from /usr/include/string.h:286:14
(define strchrnul
   (foreign-library-function "libSDL2_image" "strchrnul" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 411 from /usr/include/string.h:293:15
(define strcspn
   (foreign-library-function "libSDL2_image" "strcspn" 
     #:return-type ulong       #:arg-types ('* '* ))


;; definition 412 from /usr/include/string.h:297:15
(define strspn
   (foreign-library-function "libSDL2_image" "strspn" 
     #:return-type ulong       #:arg-types ('* '* ))


;; definition 413 from /usr/include/string.h:323:14
(define strpbrk
   (foreign-library-function "libSDL2_image" "strpbrk" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 414 from /usr/include/string.h:350:14
(define strstr
   (foreign-library-function "libSDL2_image" "strstr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 415 from /usr/include/string.h:356:14
(define strtok
   (foreign-library-function "libSDL2_image" "strtok" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 416 from /usr/include/string.h:361:14
(define --strtok-r
   (foreign-library-function "libSDL2_image" "__strtok_r" 
     #:return-type '*       #:arg-types ('* '* '* ))


;; definition 417 from /usr/include/string.h:366:14
(define strtok-r
   (foreign-library-function "libSDL2_image" "strtok_r" 
     #:return-type '*       #:arg-types ('* '* '* ))


;; definition 418 from /usr/include/string.h:380:14
(define strcasestr
   (foreign-library-function "libSDL2_image" "strcasestr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 422 from /usr/include/string.h:407:15
(define strlen
   (foreign-library-function "libSDL2_image" "strlen" 
     #:return-type ulong       #:arg-types ('* ))


;; definition 424 from /usr/include/string.h:419:14
(define strerror
   (foreign-library-function "libSDL2_image" "strerror" 
     #:return-type '*       #:arg-types (int ))


;; definition 430 from /usr/include/strings.h:68:14
(define index
   (foreign-library-function "libSDL2_image" "index" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 431 from /usr/include/strings.h:96:14
(define rindex
   (foreign-library-function "libSDL2_image" "rindex" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 432 from /usr/include/strings.h:104:12
(define ffs
   (foreign-library-function "libSDL2_image" "ffs" 
     #:return-type int       #:arg-types (int ))


;; definition 433 from /usr/include/strings.h:110:12
(define ffsl
   (foreign-library-function "libSDL2_image" "ffsl" 
     #:return-type int       #:arg-types (long ))


;; definition 435 from /usr/include/strings.h:116:12
(define strcasecmp
   (foreign-library-function "libSDL2_image" "strcasecmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 440 from /usr/include/string.h:471:14
(define strsep
   (foreign-library-function "libSDL2_image" "strsep" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 441 from /usr/include/string.h:478:14
(define strsignal
   (foreign-library-function "libSDL2_image" "strsignal" 
     #:return-type '*       #:arg-types (int ))


;; definition 442 from /usr/include/string.h:489:14
(define --stpcpy
   (foreign-library-function "libSDL2_image" "__stpcpy" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 443 from /usr/include/string.h:491:14
(define stpcpy
   (foreign-library-function "libSDL2_image" "stpcpy" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 451 from /usr/include/wchar.h:98:17
(define wcscpy
   (foreign-library-function "libSDL2_image" "wcscpy" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 455 from /usr/include/wchar.h:121:17
(define wcscat
   (foreign-library-function "libSDL2_image" "wcscat" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 457 from /usr/include/wchar.h:130:12
(define wcscmp
   (foreign-library-function "libSDL2_image" "wcscmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 459 from /usr/include/wchar.h:138:12
(define wcscasecmp
   (foreign-library-function "libSDL2_image" "wcscasecmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 463 from /usr/include/wchar.h:155:12
(define wcscoll
   (foreign-library-function "libSDL2_image" "wcscoll" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 467 from /usr/include/wchar.h:178:17
(define wcsdup
   (foreign-library-function "libSDL2_image" "wcsdup" 
     #:return-type '*       #:arg-types ('* ))


;; definition 468 from /usr/include/wchar.h:189:17
(define wcschr
   (foreign-library-function "libSDL2_image" "wcschr" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 469 from /usr/include/wchar.h:199:17
(define wcsrchr
   (foreign-library-function "libSDL2_image" "wcsrchr" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 472 from /usr/include/wchar.h:226:17
(define wcspbrk
   (foreign-library-function "libSDL2_image" "wcspbrk" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 473 from /usr/include/wchar.h:237:17
(define wcsstr
   (foreign-library-function "libSDL2_image" "wcsstr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 474 from /usr/include/wchar.h:242:17
(define wcstok
   (foreign-library-function "libSDL2_image" "wcstok" 
     #:return-type '*       #:arg-types ('* '* '* ))


;; definition 475 from /usr/include/wchar.h:247:15
(define wcslen
   (foreign-library-function "libSDL2_image" "wcslen" 
     #:return-type ulong       #:arg-types ('* ))


;; definition 484 from /usr/include/wchar.h:317:12
(define mbsinit
   (foreign-library-function "libSDL2_image" "mbsinit" 
     #:return-type int       #:arg-types ('* ))


;; definition 493 from /usr/include/wchar.h:402:15
(define wcstod
   (foreign-library-function "libSDL2_image" "wcstod" 
     #:return-type double       #:arg-types ('* '* ))


;; definition 494 from /usr/include/wchar.h:407:14
(define wcstof
   (foreign-library-function "libSDL2_image" "wcstof" 
     #:return-type float       #:arg-types ('* '* ))


;; definition 496 from /usr/include/wchar.h:455:17
(define wcstol
   (foreign-library-function "libSDL2_image" "wcstol" 
     #:return-type long       #:arg-types ('* '* int ))


;; definition 497 from /usr/include/wchar.h:460:26
(define wcstoul
   (foreign-library-function "libSDL2_image" "wcstoul" 
     #:return-type ulong       #:arg-types ('* '* int ))


;; definition 500 from /usr/include/wchar.h:689:17
(define wcpcpy
   (foreign-library-function "libSDL2_image" "wcpcpy" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 502 from /usr/include/wchar.h:718:16
(define open-wmemstream
   (foreign-library-function "libSDL2_image" "open_wmemstream" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 503 from /usr/include/wchar.h:725:12
(define fwide
   (foreign-library-function "libSDL2_image" "fwide" 
     #:return-type int       #:arg-types ('* int ))


;; definition 504 from /usr/include/wchar.h:732:12
(define fwprintf
   (foreign-library-function "libSDL2_image" "fwprintf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 505 from /usr/include/wchar.h:739:12
(define wprintf
   (foreign-library-function "libSDL2_image" "wprintf" 
     #:return-type int       #:arg-types ('* ))


;; definition 510 from /usr/include/wchar.h:773:12
(define fwscanf
   (foreign-library-function "libSDL2_image" "fwscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 511 from /usr/include/wchar.h:780:12
(define wscanf
   (foreign-library-function "libSDL2_image" "wscanf" 
     #:return-type int       #:arg-types ('* ))


;; definition 512 from /usr/include/wchar.h:783:12
(define swscanf
   (foreign-library-function "libSDL2_image" "swscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 513 from /usr/include/wchar.h:819:12 <Spelling=/usr/include/wchar.h:819:24>
(define fwscanf
   (foreign-library-function "libSDL2_image" "fwscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 514 from /usr/include/wchar.h:823:12 <Spelling=/usr/include/wchar.h:823:24>
(define wscanf
   (foreign-library-function "libSDL2_image" "wscanf" 
     #:return-type int       #:arg-types ('* ))


;; definition 515 from /usr/include/wchar.h:826:12 <Spelling=/usr/include/wchar.h:826:28>
(define swscanf
   (foreign-library-function "libSDL2_image" "swscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 528 from /usr/include/wchar.h:964:17
(define fgetws
   (foreign-library-function "libSDL2_image" "fgetws" 
     #:return-type '*       #:arg-types ('* int '* ))


;; definition 529 from /usr/include/wchar.h:971:12
(define fputws
   (foreign-library-function "libSDL2_image" "fputws" 
     #:return-type int       #:arg-types ('* '* ))








;; definition 568 from /usr/include/ctype.h:108:1 <Spelling=/usr/include/ctype.h:108:12>
(define isalnum
   (foreign-library-function "libSDL2_image" "isalnum" 
     #:return-type int       #:arg-types (int ))


;; definition 569 from /usr/include/ctype.h:109:1 <Spelling=/usr/include/ctype.h:109:12>
(define isalpha
   (foreign-library-function "libSDL2_image" "isalpha" 
     #:return-type int       #:arg-types (int ))


;; definition 570 from /usr/include/ctype.h:110:1 <Spelling=/usr/include/ctype.h:110:12>
(define iscntrl
   (foreign-library-function "libSDL2_image" "iscntrl" 
     #:return-type int       #:arg-types (int ))


;; definition 571 from /usr/include/ctype.h:111:1 <Spelling=/usr/include/ctype.h:111:12>
(define isdigit
   (foreign-library-function "libSDL2_image" "isdigit" 
     #:return-type int       #:arg-types (int ))


;; definition 572 from /usr/include/ctype.h:112:1 <Spelling=/usr/include/ctype.h:112:12>
(define islower
   (foreign-library-function "libSDL2_image" "islower" 
     #:return-type int       #:arg-types (int ))


;; definition 573 from /usr/include/ctype.h:113:1 <Spelling=/usr/include/ctype.h:113:12>
(define isgraph
   (foreign-library-function "libSDL2_image" "isgraph" 
     #:return-type int       #:arg-types (int ))


;; definition 574 from /usr/include/ctype.h:114:1 <Spelling=/usr/include/ctype.h:114:12>
(define isprint
   (foreign-library-function "libSDL2_image" "isprint" 
     #:return-type int       #:arg-types (int ))


;; definition 575 from /usr/include/ctype.h:115:1 <Spelling=/usr/include/ctype.h:115:12>
(define ispunct
   (foreign-library-function "libSDL2_image" "ispunct" 
     #:return-type int       #:arg-types (int ))


;; definition 576 from /usr/include/ctype.h:116:1 <Spelling=/usr/include/ctype.h:116:12>
(define isspace
   (foreign-library-function "libSDL2_image" "isspace" 
     #:return-type int       #:arg-types (int ))


;; definition 577 from /usr/include/ctype.h:117:1 <Spelling=/usr/include/ctype.h:117:12>
(define isupper
   (foreign-library-function "libSDL2_image" "isupper" 
     #:return-type int       #:arg-types (int ))


;; definition 578 from /usr/include/ctype.h:118:1 <Spelling=/usr/include/ctype.h:118:12>
(define isxdigit
   (foreign-library-function "libSDL2_image" "isxdigit" 
     #:return-type int       #:arg-types (int ))


;; definition 579 from /usr/include/ctype.h:122:12
(define tolower
   (foreign-library-function "libSDL2_image" "tolower" 
     #:return-type int       #:arg-types (int ))


;; definition 580 from /usr/include/ctype.h:125:12
(define toupper
   (foreign-library-function "libSDL2_image" "toupper" 
     #:return-type int       #:arg-types (int ))


;; definition 581 from /usr/include/ctype.h:130:1 <Spelling=/usr/include/ctype.h:130:12>
(define isblank
   (foreign-library-function "libSDL2_image" "isblank" 
     #:return-type int       #:arg-types (int ))


;; definition 582 from /usr/include/ctype.h:142:12
(define isascii
   (foreign-library-function "libSDL2_image" "isascii" 
     #:return-type int       #:arg-types (int ))


;; definition 583 from /usr/include/ctype.h:146:12
(define toascii
   (foreign-library-function "libSDL2_image" "toascii" 
     #:return-type int       #:arg-types (int ))


;; definition 584 from /usr/include/ctype.h:150:1 <Spelling=/usr/include/ctype.h:150:12>
(define -toupper
   (foreign-library-function "libSDL2_image" "_toupper" 
     #:return-type int       #:arg-types (int ))


;; definition 585 from /usr/include/ctype.h:151:1 <Spelling=/usr/include/ctype.h:151:12>
(define -tolower
   (foreign-library-function "libSDL2_image" "_tolower" 
     #:return-type int       #:arg-types (int ))


;; definition 604 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:20:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:20:24>
(define --fpclassify
   (foreign-library-function "libSDL2_image" "__fpclassify" 
     #:return-type int       #:arg-types (double ))


;; definition 605 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:24:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:24:24>
(define --signbit
   (foreign-library-function "libSDL2_image" "__signbit" 
     #:return-type int       #:arg-types (double ))


;; definition 606 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:29:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:29:24>
(define --isinf
   (foreign-library-function "libSDL2_image" "__isinf" 
     #:return-type int       #:arg-types (double ))


;; definition 607 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:33:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:33:24>
(define --finite
   (foreign-library-function "libSDL2_image" "__finite" 
     #:return-type int       #:arg-types (double ))


;; definition 608 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:37:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:37:24>
(define --isnan
   (foreign-library-function "libSDL2_image" "__isnan" 
     #:return-type int       #:arg-types (double ))


;; definition 609 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:41:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:41:24>
(define --iseqsig
   (foreign-library-function "libSDL2_image" "__iseqsig" 
     #:return-type int       #:arg-types (double double ))


;; definition 610 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:44:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:44:24>
(define --issignaling
   (foreign-library-function "libSDL2_image" "__issignaling" 
     #:return-type int       #:arg-types (double ))


;; definition 611 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:53:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:53:17>
(define acos
   (foreign-library-function "libSDL2_image" "acos" 
     #:return-type double       #:arg-types (double ))


;; definition 612 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:53:1 <Spelling=<scratch space>:196:1>
(define --acos
   (foreign-library-function "libSDL2_image" "__acos" 
     #:return-type double       #:arg-types (double ))


;; definition 613 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:55:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:55:17>
(define asin
   (foreign-library-function "libSDL2_image" "asin" 
     #:return-type double       #:arg-types (double ))


;; definition 614 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:55:1 <Spelling=<scratch space>:198:1>
(define --asin
   (foreign-library-function "libSDL2_image" "__asin" 
     #:return-type double       #:arg-types (double ))


;; definition 615 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:57:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:57:17>
(define atan
   (foreign-library-function "libSDL2_image" "atan" 
     #:return-type double       #:arg-types (double ))


;; definition 616 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:57:1 <Spelling=<scratch space>:200:1>
(define --atan
   (foreign-library-function "libSDL2_image" "__atan" 
     #:return-type double       #:arg-types (double ))


;; definition 617 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:59:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:59:17>
(define atan2
   (foreign-library-function "libSDL2_image" "atan2" 
     #:return-type double       #:arg-types (double double ))


;; definition 618 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:59:1 <Spelling=<scratch space>:202:1>
(define --atan2
   (foreign-library-function "libSDL2_image" "__atan2" 
     #:return-type double       #:arg-types (double double ))


;; definition 619 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:62:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:62:17>
(define cos
   (foreign-library-function "libSDL2_image" "cos" 
     #:return-type double       #:arg-types (double ))


;; definition 620 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:62:1 <Spelling=<scratch space>:204:1>
(define --cos
   (foreign-library-function "libSDL2_image" "__cos" 
     #:return-type double       #:arg-types (double ))


;; definition 621 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:64:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:64:17>
(define sin
   (foreign-library-function "libSDL2_image" "sin" 
     #:return-type double       #:arg-types (double ))


;; definition 622 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:64:1 <Spelling=<scratch space>:206:1>
(define --sin
   (foreign-library-function "libSDL2_image" "__sin" 
     #:return-type double       #:arg-types (double ))


;; definition 623 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:66:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:66:17>
(define tan
   (foreign-library-function "libSDL2_image" "tan" 
     #:return-type double       #:arg-types (double ))


;; definition 624 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:66:1 <Spelling=<scratch space>:208:1>
(define --tan
   (foreign-library-function "libSDL2_image" "__tan" 
     #:return-type double       #:arg-types (double ))


;; definition 625 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:93:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:93:17>
(define cosh
   (foreign-library-function "libSDL2_image" "cosh" 
     #:return-type double       #:arg-types (double ))


;; definition 626 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:93:1 <Spelling=<scratch space>:211:1>
(define --cosh
   (foreign-library-function "libSDL2_image" "__cosh" 
     #:return-type double       #:arg-types (double ))


;; definition 627 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:95:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:95:17>
(define sinh
   (foreign-library-function "libSDL2_image" "sinh" 
     #:return-type double       #:arg-types (double ))


;; definition 628 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:95:1 <Spelling=<scratch space>:213:1>
(define --sinh
   (foreign-library-function "libSDL2_image" "__sinh" 
     #:return-type double       #:arg-types (double ))


;; definition 629 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:97:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:97:17>
(define tanh
   (foreign-library-function "libSDL2_image" "tanh" 
     #:return-type double       #:arg-types (double ))


;; definition 630 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:97:1 <Spelling=<scratch space>:215:1>
(define --tanh
   (foreign-library-function "libSDL2_image" "__tanh" 
     #:return-type double       #:arg-types (double ))


;; definition 631 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:107:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:107:17>
(define acosh
   (foreign-library-function "libSDL2_image" "acosh" 
     #:return-type double       #:arg-types (double ))


;; definition 632 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:107:1 <Spelling=<scratch space>:217:1>
(define --acosh
   (foreign-library-function "libSDL2_image" "__acosh" 
     #:return-type double       #:arg-types (double ))


;; definition 633 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:109:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:109:17>
(define asinh
   (foreign-library-function "libSDL2_image" "asinh" 
     #:return-type double       #:arg-types (double ))


;; definition 634 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:109:1 <Spelling=<scratch space>:219:1>
(define --asinh
   (foreign-library-function "libSDL2_image" "__asinh" 
     #:return-type double       #:arg-types (double ))


;; definition 635 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:111:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:111:17>
(define atanh
   (foreign-library-function "libSDL2_image" "atanh" 
     #:return-type double       #:arg-types (double ))


;; definition 636 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:111:1 <Spelling=<scratch space>:221:1>
(define --atanh
   (foreign-library-function "libSDL2_image" "__atanh" 
     #:return-type double       #:arg-types (double ))


;; definition 637 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:117:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:117:17>
(define exp
   (foreign-library-function "libSDL2_image" "exp" 
     #:return-type double       #:arg-types (double ))


;; definition 638 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:117:1 <Spelling=<scratch space>:223:1>
(define --exp
   (foreign-library-function "libSDL2_image" "__exp" 
     #:return-type double       #:arg-types (double ))


;; definition 639 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:120:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:120:13>
(define frexp
   (foreign-library-function "libSDL2_image" "frexp" 
     #:return-type double       #:arg-types (double '* ))


;; definition 640 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:120:1 <Spelling=<scratch space>:224:1>
(define --frexp
   (foreign-library-function "libSDL2_image" "__frexp" 
     #:return-type double       #:arg-types (double '* ))


;; definition 641 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:123:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:123:13>
(define ldexp
   (foreign-library-function "libSDL2_image" "ldexp" 
     #:return-type double       #:arg-types (double int ))


;; definition 642 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:123:1 <Spelling=<scratch space>:225:1>
(define --ldexp
   (foreign-library-function "libSDL2_image" "__ldexp" 
     #:return-type double       #:arg-types (double int ))


;; definition 643 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:126:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:126:17>
(define log
   (foreign-library-function "libSDL2_image" "log" 
     #:return-type double       #:arg-types (double ))


;; definition 644 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:126:1 <Spelling=<scratch space>:227:1>
(define --log
   (foreign-library-function "libSDL2_image" "__log" 
     #:return-type double       #:arg-types (double ))


;; definition 645 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:129:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:129:17>
(define log10
   (foreign-library-function "libSDL2_image" "log10" 
     #:return-type double       #:arg-types (double ))


;; definition 646 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:129:1 <Spelling=<scratch space>:229:1>
(define --log10
   (foreign-library-function "libSDL2_image" "__log10" 
     #:return-type double       #:arg-types (double ))


;; definition 647 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:132:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:132:13>
(define modf
   (foreign-library-function "libSDL2_image" "modf" 
     #:return-type double       #:arg-types (double '* ))


;; definition 648 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:132:1 <Spelling=<scratch space>:230:1>
(define --modf
   (foreign-library-function "libSDL2_image" "__modf" 
     #:return-type double       #:arg-types (double '* ))


;; definition 649 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:156:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:156:17>
(define expm1
   (foreign-library-function "libSDL2_image" "expm1" 
     #:return-type double       #:arg-types (double ))


;; definition 650 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:156:1 <Spelling=<scratch space>:233:1>
(define --expm1
   (foreign-library-function "libSDL2_image" "__expm1" 
     #:return-type double       #:arg-types (double ))


;; definition 651 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:159:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:159:17>
(define log1p
   (foreign-library-function "libSDL2_image" "log1p" 
     #:return-type double       #:arg-types (double ))


;; definition 652 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:159:1 <Spelling=<scratch space>:235:1>
(define --log1p
   (foreign-library-function "libSDL2_image" "__log1p" 
     #:return-type double       #:arg-types (double ))


;; definition 653 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:162:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:162:13>
(define logb
   (foreign-library-function "libSDL2_image" "logb" 
     #:return-type double       #:arg-types (double ))


;; definition 654 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:162:1 <Spelling=<scratch space>:236:1>
(define --logb
   (foreign-library-function "libSDL2_image" "__logb" 
     #:return-type double       #:arg-types (double ))


;; definition 655 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:167:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:167:17>
(define exp2
   (foreign-library-function "libSDL2_image" "exp2" 
     #:return-type double       #:arg-types (double ))


;; definition 656 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:167:1 <Spelling=<scratch space>:238:1>
(define --exp2
   (foreign-library-function "libSDL2_image" "__exp2" 
     #:return-type double       #:arg-types (double ))


;; definition 657 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:170:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:170:17>
(define log2
   (foreign-library-function "libSDL2_image" "log2" 
     #:return-type double       #:arg-types (double ))


;; definition 658 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:170:1 <Spelling=<scratch space>:240:1>
(define --log2
   (foreign-library-function "libSDL2_image" "__log2" 
     #:return-type double       #:arg-types (double ))


;; definition 659 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:177:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:177:17>
(define pow
   (foreign-library-function "libSDL2_image" "pow" 
     #:return-type double       #:arg-types (double double ))


;; definition 660 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:177:1 <Spelling=<scratch space>:242:1>
(define --pow
   (foreign-library-function "libSDL2_image" "__pow" 
     #:return-type double       #:arg-types (double double ))


;; definition 661 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:180:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:180:13>
(define sqrt
   (foreign-library-function "libSDL2_image" "sqrt" 
     #:return-type double       #:arg-types (double ))


;; definition 662 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:180:1 <Spelling=<scratch space>:243:1>
(define --sqrt
   (foreign-library-function "libSDL2_image" "__sqrt" 
     #:return-type double       #:arg-types (double ))


;; definition 663 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:184:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:184:17>
(define hypot
   (foreign-library-function "libSDL2_image" "hypot" 
     #:return-type double       #:arg-types (double double ))


;; definition 664 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:184:1 <Spelling=<scratch space>:245:1>
(define --hypot
   (foreign-library-function "libSDL2_image" "__hypot" 
     #:return-type double       #:arg-types (double double ))


;; definition 665 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:189:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:189:17>
(define cbrt
   (foreign-library-function "libSDL2_image" "cbrt" 
     #:return-type double       #:arg-types (double ))


;; definition 666 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:189:1 <Spelling=<scratch space>:247:1>
(define --cbrt
   (foreign-library-function "libSDL2_image" "__cbrt" 
     #:return-type double       #:arg-types (double ))


;; definition 667 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:213:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:213:14>
(define ceil
   (foreign-library-function "libSDL2_image" "ceil" 
     #:return-type double       #:arg-types (double ))


;; definition 668 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:216:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:216:14>
(define fabs
   (foreign-library-function "libSDL2_image" "fabs" 
     #:return-type double       #:arg-types (double ))


;; definition 669 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:219:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:219:14>
(define floor
   (foreign-library-function "libSDL2_image" "floor" 
     #:return-type double       #:arg-types (double ))


;; definition 670 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:222:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:222:13>
(define fmod
   (foreign-library-function "libSDL2_image" "fmod" 
     #:return-type double       #:arg-types (double double ))


;; definition 671 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:222:1 <Spelling=<scratch space>:249:1>
(define --fmod
   (foreign-library-function "libSDL2_image" "__fmod" 
     #:return-type double       #:arg-types (double double ))


;; definition 672 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:231:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:231:23>
(define isinf
   (foreign-library-function "libSDL2_image" "isinf" 
     #:return-type int       #:arg-types (double ))


;; definition 673 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:237:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:237:23>
(define finite
   (foreign-library-function "libSDL2_image" "finite" 
     #:return-type int       #:arg-types (double ))


;; definition 674 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:241:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:241:13>
(define drem
   (foreign-library-function "libSDL2_image" "drem" 
     #:return-type double       #:arg-types (double double ))


;; definition 675 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:241:1 <Spelling=<scratch space>:250:1>
(define --drem
   (foreign-library-function "libSDL2_image" "__drem" 
     #:return-type double       #:arg-types (double double ))


;; definition 676 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:245:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:245:13>
(define significand
   (foreign-library-function "libSDL2_image" "significand" 
     #:return-type double       #:arg-types (double ))


;; definition 677 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:245:1 <Spelling=<scratch space>:251:1>
(define --significand
   (foreign-library-function "libSDL2_image" "__significand" 
     #:return-type double       #:arg-types (double ))


;; definition 678 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:252:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:252:14>
(define copysign
   (foreign-library-function "libSDL2_image" "copysign" 
     #:return-type double       #:arg-types (double double ))


;; definition 679 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:257:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:257:13>
(define nan
   (foreign-library-function "libSDL2_image" "nan" 
     #:return-type double       #:arg-types ('* ))


;; definition 680 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:257:1 <Spelling=<scratch space>:252:1>
(define --nan
   (foreign-library-function "libSDL2_image" "__nan" 
     #:return-type double       #:arg-types ('* ))


;; definition 681 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:267:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:267:23>
(define isnan
   (foreign-library-function "libSDL2_image" "isnan" 
     #:return-type int       #:arg-types (double ))


;; definition 682 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:274:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:274:13>
(define j0
   (foreign-library-function "libSDL2_image" "j0" 
     #:return-type double       #:arg-types (double ))


;; definition 683 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:274:1 <Spelling=<scratch space>:253:1>
(define --j0
   (foreign-library-function "libSDL2_image" "__j0" 
     #:return-type double       #:arg-types (double ))


;; definition 684 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:275:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:275:13>
(define j1
   (foreign-library-function "libSDL2_image" "j1" 
     #:return-type double       #:arg-types (double ))


;; definition 685 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:275:1 <Spelling=<scratch space>:254:1>
(define --j1
   (foreign-library-function "libSDL2_image" "__j1" 
     #:return-type double       #:arg-types (double ))


;; definition 686 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:276:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:276:13>
(define jn
   (foreign-library-function "libSDL2_image" "jn" 
     #:return-type double       #:arg-types (int double ))


;; definition 687 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:276:1 <Spelling=<scratch space>:255:1>
(define --jn
   (foreign-library-function "libSDL2_image" "__jn" 
     #:return-type double       #:arg-types (int double ))


;; definition 688 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:277:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:277:13>
(define y0
   (foreign-library-function "libSDL2_image" "y0" 
     #:return-type double       #:arg-types (double ))


;; definition 689 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:277:1 <Spelling=<scratch space>:256:1>
(define --y0
   (foreign-library-function "libSDL2_image" "__y0" 
     #:return-type double       #:arg-types (double ))


;; definition 690 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:278:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:278:13>
(define y1
   (foreign-library-function "libSDL2_image" "y1" 
     #:return-type double       #:arg-types (double ))


;; definition 691 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:278:1 <Spelling=<scratch space>:2:1>
(define --y1
   (foreign-library-function "libSDL2_image" "__y1" 
     #:return-type double       #:arg-types (double ))


;; definition 692 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:279:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:279:13>
(define yn
   (foreign-library-function "libSDL2_image" "yn" 
     #:return-type double       #:arg-types (int double ))


;; definition 693 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:279:1 <Spelling=<scratch space>:3:1>
(define --yn
   (foreign-library-function "libSDL2_image" "__yn" 
     #:return-type double       #:arg-types (int double ))


;; definition 694 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:285:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:285:17>
(define erf
   (foreign-library-function "libSDL2_image" "erf" 
     #:return-type double       #:arg-types (double ))


;; definition 695 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:285:1 <Spelling=<scratch space>:5:1>
(define --erf
   (foreign-library-function "libSDL2_image" "__erf" 
     #:return-type double       #:arg-types (double ))


;; definition 696 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:286:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:286:17>
(define erfc
   (foreign-library-function "libSDL2_image" "erfc" 
     #:return-type double       #:arg-types (double ))


;; definition 697 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:286:1 <Spelling=<scratch space>:7:1>
(define --erfc
   (foreign-library-function "libSDL2_image" "__erfc" 
     #:return-type double       #:arg-types (double ))


;; definition 698 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:287:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:287:13>
(define lgamma
   (foreign-library-function "libSDL2_image" "lgamma" 
     #:return-type double       #:arg-types (double ))


;; definition 699 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:287:1 <Spelling=<scratch space>:8:1>
(define --lgamma
   (foreign-library-function "libSDL2_image" "__lgamma" 
     #:return-type double       #:arg-types (double ))


;; definition 700 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:292:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:292:13>
(define tgamma
   (foreign-library-function "libSDL2_image" "tgamma" 
     #:return-type double       #:arg-types (double ))


;; definition 701 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:292:1 <Spelling=<scratch space>:9:1>
(define --tgamma
   (foreign-library-function "libSDL2_image" "__tgamma" 
     #:return-type double       #:arg-types (double ))


;; definition 702 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:298:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:298:13>
(define gamma
   (foreign-library-function "libSDL2_image" "gamma" 
     #:return-type double       #:arg-types (double ))


;; definition 703 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:298:1 <Spelling=<scratch space>:10:1>
(define --gamma
   (foreign-library-function "libSDL2_image" "__gamma" 
     #:return-type double       #:arg-types (double ))


;; definition 704 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:306:1 <Spelling=<scratch space>:11:1>
(define lgamma-r
   (foreign-library-function "libSDL2_image" "lgamma_r" 
     #:return-type double       #:arg-types (double '* ))


;; definition 705 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:306:1 <Spelling=<scratch space>:13:1>
(define --lgamma-r
   (foreign-library-function "libSDL2_image" "__lgamma_r" 
     #:return-type double       #:arg-types (double '* ))


;; definition 706 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:313:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:313:13>
(define rint
   (foreign-library-function "libSDL2_image" "rint" 
     #:return-type double       #:arg-types (double ))


;; definition 707 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:313:1 <Spelling=<scratch space>:14:1>
(define --rint
   (foreign-library-function "libSDL2_image" "__rint" 
     #:return-type double       #:arg-types (double ))


;; definition 708 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:316:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:316:13>
(define nextafter
   (foreign-library-function "libSDL2_image" "nextafter" 
     #:return-type double       #:arg-types (double double ))


;; definition 709 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:316:1 <Spelling=<scratch space>:15:1>
(define --nextafter
   (foreign-library-function "libSDL2_image" "__nextafter" 
     #:return-type double       #:arg-types (double double ))


;; definition 712 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:329:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:329:13>
(define remainder
   (foreign-library-function "libSDL2_image" "remainder" 
     #:return-type double       #:arg-types (double double ))


;; definition 713 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:329:1 <Spelling=<scratch space>:18:1>
(define --remainder
   (foreign-library-function "libSDL2_image" "__remainder" 
     #:return-type double       #:arg-types (double double ))


;; definition 714 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:333:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:333:13>
(define scalbn
   (foreign-library-function "libSDL2_image" "scalbn" 
     #:return-type double       #:arg-types (double int ))


;; definition 715 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:333:1 <Spelling=<scratch space>:19:1>
(define --scalbn
   (foreign-library-function "libSDL2_image" "__scalbn" 
     #:return-type double       #:arg-types (double int ))


;; definition 716 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:337:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:337:17>
(define ilogb
   (foreign-library-function "libSDL2_image" "ilogb" 
     #:return-type int       #:arg-types (double ))


;; definition 717 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:337:1 <Spelling=<scratch space>:20:1>
(define --ilogb
   (foreign-library-function "libSDL2_image" "__ilogb" 
     #:return-type int       #:arg-types (double ))


;; definition 718 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:347:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:347:13>
(define scalbln
   (foreign-library-function "libSDL2_image" "scalbln" 
     #:return-type double       #:arg-types (double long ))


;; definition 719 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:347:1 <Spelling=<scratch space>:22:1>
(define --scalbln
   (foreign-library-function "libSDL2_image" "__scalbln" 
     #:return-type double       #:arg-types (double long ))


;; definition 720 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:351:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:351:13>
(define nearbyint
   (foreign-library-function "libSDL2_image" "nearbyint" 
     #:return-type double       #:arg-types (double ))


;; definition 721 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:351:1 <Spelling=<scratch space>:23:1>
(define --nearbyint
   (foreign-library-function "libSDL2_image" "__nearbyint" 
     #:return-type double       #:arg-types (double ))


;; definition 722 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:355:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:355:14>
(define round
   (foreign-library-function "libSDL2_image" "round" 
     #:return-type double       #:arg-types (double ))


;; definition 723 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:359:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:359:14>
(define trunc
   (foreign-library-function "libSDL2_image" "trunc" 
     #:return-type double       #:arg-types (double ))


;; definition 724 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:364:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:364:13>
(define remquo
   (foreign-library-function "libSDL2_image" "remquo" 
     #:return-type double       #:arg-types (double double '* ))


;; definition 725 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:364:1 <Spelling=<scratch space>:24:1>
(define --remquo
   (foreign-library-function "libSDL2_image" "__remquo" 
     #:return-type double       #:arg-types (double double '* ))


;; definition 726 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:371:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:371:22>
(define lrint
   (foreign-library-function "libSDL2_image" "lrint" 
     #:return-type long       #:arg-types (double ))


;; definition 727 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:371:1 <Spelling=<scratch space>:25:1>
(define --lrint
   (foreign-library-function "libSDL2_image" "__lrint" 
     #:return-type long       #:arg-types (double ))


;; definition 730 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:377:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:377:22>
(define lround
   (foreign-library-function "libSDL2_image" "lround" 
     #:return-type long       #:arg-types (double ))


;; definition 731 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:377:1 <Spelling=<scratch space>:27:1>
(define --lround
   (foreign-library-function "libSDL2_image" "__lround" 
     #:return-type long       #:arg-types (double ))


;; definition 734 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:383:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:383:13>
(define fdim
   (foreign-library-function "libSDL2_image" "fdim" 
     #:return-type double       #:arg-types (double double ))


;; definition 735 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:383:1 <Spelling=<scratch space>:29:1>
(define --fdim
   (foreign-library-function "libSDL2_image" "__fdim" 
     #:return-type double       #:arg-types (double double ))


;; definition 736 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:387:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:387:14>
(define fmax
   (foreign-library-function "libSDL2_image" "fmax" 
     #:return-type double       #:arg-types (double double ))


;; definition 737 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:390:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:390:14>
(define fmin
   (foreign-library-function "libSDL2_image" "fmin" 
     #:return-type double       #:arg-types (double double ))


;; definition 738 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:394:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:394:13>
(define fma
   (foreign-library-function "libSDL2_image" "fma" 
     #:return-type double       #:arg-types (double double double ))


;; definition 739 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:394:1 <Spelling=<scratch space>:31:1>
(define --fma
   (foreign-library-function "libSDL2_image" "__fma" 
     #:return-type double       #:arg-types (double double double ))


;; definition 740 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:489:1 <Spelling=/usr/include/x86_64-linux-gnu/bits/mathcalls.h:489:13>
(define scalb
   (foreign-library-function "libSDL2_image" "scalb" 
     #:return-type double       #:arg-types (double double ))


;; definition 741 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:489:1 <Spelling=<scratch space>:37:1>
(define --scalb
   (foreign-library-function "libSDL2_image" "__scalb" 
     #:return-type double       #:arg-types (double double ))


;; definition 742 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:20:1 <Spelling=<scratch space>:38:1>
(define --fpclassifyf
   (foreign-library-function "libSDL2_image" "__fpclassifyf" 
     #:return-type int       #:arg-types (float ))


;; definition 743 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:24:1 <Spelling=<scratch space>:39:1>
(define --signbitf
   (foreign-library-function "libSDL2_image" "__signbitf" 
     #:return-type int       #:arg-types (float ))


;; definition 744 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:29:1 <Spelling=<scratch space>:40:1>
(define --isinff
   (foreign-library-function "libSDL2_image" "__isinff" 
     #:return-type int       #:arg-types (float ))


;; definition 745 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:33:1 <Spelling=<scratch space>:41:1>
(define --finitef
   (foreign-library-function "libSDL2_image" "__finitef" 
     #:return-type int       #:arg-types (float ))


;; definition 746 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:37:1 <Spelling=<scratch space>:42:1>
(define --isnanf
   (foreign-library-function "libSDL2_image" "__isnanf" 
     #:return-type int       #:arg-types (float ))


;; definition 747 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:41:1 <Spelling=<scratch space>:43:1>
(define --iseqsigf
   (foreign-library-function "libSDL2_image" "__iseqsigf" 
     #:return-type int       #:arg-types (float float ))


;; definition 748 from /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h:44:1 <Spelling=<scratch space>:44:1>
(define --issignalingf
   (foreign-library-function "libSDL2_image" "__issignalingf" 
     #:return-type int       #:arg-types (float ))


;; definition 749 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:53:1 <Spelling=<scratch space>:47:1>
(define acosf
   (foreign-library-function "libSDL2_image" "acosf" 
     #:return-type float       #:arg-types (float ))


;; definition 750 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:53:1 <Spelling=<scratch space>:49:1>
(define --acosf
   (foreign-library-function "libSDL2_image" "__acosf" 
     #:return-type float       #:arg-types (float ))


;; definition 751 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:55:1 <Spelling=<scratch space>:52:1>
(define asinf
   (foreign-library-function "libSDL2_image" "asinf" 
     #:return-type float       #:arg-types (float ))


;; definition 752 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:55:1 <Spelling=<scratch space>:54:1>
(define --asinf
   (foreign-library-function "libSDL2_image" "__asinf" 
     #:return-type float       #:arg-types (float ))


;; definition 753 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:57:1 <Spelling=<scratch space>:57:1>
(define atanf
   (foreign-library-function "libSDL2_image" "atanf" 
     #:return-type float       #:arg-types (float ))


;; definition 754 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:57:1 <Spelling=<scratch space>:59:1>
(define --atanf
   (foreign-library-function "libSDL2_image" "__atanf" 
     #:return-type float       #:arg-types (float ))


;; definition 755 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:59:1 <Spelling=<scratch space>:62:1>
(define atan2f
   (foreign-library-function "libSDL2_image" "atan2f" 
     #:return-type float       #:arg-types (float float ))


;; definition 756 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:59:1 <Spelling=<scratch space>:64:1>
(define --atan2f
   (foreign-library-function "libSDL2_image" "__atan2f" 
     #:return-type float       #:arg-types (float float ))


;; definition 757 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:62:1 <Spelling=<scratch space>:67:1>
(define cosf
   (foreign-library-function "libSDL2_image" "cosf" 
     #:return-type float       #:arg-types (float ))


;; definition 758 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:62:1 <Spelling=<scratch space>:69:1>
(define --cosf
   (foreign-library-function "libSDL2_image" "__cosf" 
     #:return-type float       #:arg-types (float ))


;; definition 759 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:64:1 <Spelling=<scratch space>:72:1>
(define sinf
   (foreign-library-function "libSDL2_image" "sinf" 
     #:return-type float       #:arg-types (float ))


;; definition 760 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:64:1 <Spelling=<scratch space>:74:1>
(define --sinf
   (foreign-library-function "libSDL2_image" "__sinf" 
     #:return-type float       #:arg-types (float ))


;; definition 761 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:66:1 <Spelling=<scratch space>:77:1>
(define tanf
   (foreign-library-function "libSDL2_image" "tanf" 
     #:return-type float       #:arg-types (float ))


;; definition 762 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:66:1 <Spelling=<scratch space>:79:1>
(define --tanf
   (foreign-library-function "libSDL2_image" "__tanf" 
     #:return-type float       #:arg-types (float ))


;; definition 763 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:93:1 <Spelling=<scratch space>:83:1>
(define coshf
   (foreign-library-function "libSDL2_image" "coshf" 
     #:return-type float       #:arg-types (float ))


;; definition 764 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:93:1 <Spelling=<scratch space>:85:1>
(define --coshf
   (foreign-library-function "libSDL2_image" "__coshf" 
     #:return-type float       #:arg-types (float ))


;; definition 765 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:95:1 <Spelling=<scratch space>:88:1>
(define sinhf
   (foreign-library-function "libSDL2_image" "sinhf" 
     #:return-type float       #:arg-types (float ))


;; definition 766 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:95:1 <Spelling=<scratch space>:90:1>
(define --sinhf
   (foreign-library-function "libSDL2_image" "__sinhf" 
     #:return-type float       #:arg-types (float ))


;; definition 767 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:97:1 <Spelling=<scratch space>:93:1>
(define tanhf
   (foreign-library-function "libSDL2_image" "tanhf" 
     #:return-type float       #:arg-types (float ))


;; definition 768 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:97:1 <Spelling=<scratch space>:95:1>
(define --tanhf
   (foreign-library-function "libSDL2_image" "__tanhf" 
     #:return-type float       #:arg-types (float ))


;; definition 769 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:107:1 <Spelling=<scratch space>:98:1>
(define acoshf
   (foreign-library-function "libSDL2_image" "acoshf" 
     #:return-type float       #:arg-types (float ))


;; definition 770 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:107:1 <Spelling=<scratch space>:100:1>
(define --acoshf
   (foreign-library-function "libSDL2_image" "__acoshf" 
     #:return-type float       #:arg-types (float ))


;; definition 771 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:109:1 <Spelling=<scratch space>:103:1>
(define asinhf
   (foreign-library-function "libSDL2_image" "asinhf" 
     #:return-type float       #:arg-types (float ))


;; definition 772 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:109:1 <Spelling=<scratch space>:105:1>
(define --asinhf
   (foreign-library-function "libSDL2_image" "__asinhf" 
     #:return-type float       #:arg-types (float ))


;; definition 773 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:111:1 <Spelling=<scratch space>:108:1>
(define atanhf
   (foreign-library-function "libSDL2_image" "atanhf" 
     #:return-type float       #:arg-types (float ))


;; definition 774 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:111:1 <Spelling=<scratch space>:110:1>
(define --atanhf
   (foreign-library-function "libSDL2_image" "__atanhf" 
     #:return-type float       #:arg-types (float ))


;; definition 775 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:117:1 <Spelling=<scratch space>:113:1>
(define expf
   (foreign-library-function "libSDL2_image" "expf" 
     #:return-type float       #:arg-types (float ))


;; definition 776 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:117:1 <Spelling=<scratch space>:115:1>
(define --expf
   (foreign-library-function "libSDL2_image" "__expf" 
     #:return-type float       #:arg-types (float ))


;; definition 777 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:120:1 <Spelling=<scratch space>:116:1>
(define frexpf
   (foreign-library-function "libSDL2_image" "frexpf" 
     #:return-type float       #:arg-types (float '* ))


;; definition 778 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:120:1 <Spelling=<scratch space>:118:1>
(define --frexpf
   (foreign-library-function "libSDL2_image" "__frexpf" 
     #:return-type float       #:arg-types (float '* ))


;; definition 779 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:123:1 <Spelling=<scratch space>:119:1>
(define ldexpf
   (foreign-library-function "libSDL2_image" "ldexpf" 
     #:return-type float       #:arg-types (float int ))


;; definition 780 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:123:1 <Spelling=<scratch space>:121:1>
(define --ldexpf
   (foreign-library-function "libSDL2_image" "__ldexpf" 
     #:return-type float       #:arg-types (float int ))


;; definition 781 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:126:1 <Spelling=<scratch space>:124:1>
(define logf
   (foreign-library-function "libSDL2_image" "logf" 
     #:return-type float       #:arg-types (float ))


;; definition 782 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:126:1 <Spelling=<scratch space>:126:1>
(define --logf
   (foreign-library-function "libSDL2_image" "__logf" 
     #:return-type float       #:arg-types (float ))


;; definition 783 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:129:1 <Spelling=<scratch space>:129:1>
(define log10f
   (foreign-library-function "libSDL2_image" "log10f" 
     #:return-type float       #:arg-types (float ))


;; definition 784 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:129:1 <Spelling=<scratch space>:131:1>
(define --log10f
   (foreign-library-function "libSDL2_image" "__log10f" 
     #:return-type float       #:arg-types (float ))


;; definition 785 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:132:1 <Spelling=<scratch space>:132:1>
(define modff
   (foreign-library-function "libSDL2_image" "modff" 
     #:return-type float       #:arg-types (float '* ))


;; definition 786 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:132:1 <Spelling=<scratch space>:134:1>
(define --modff
   (foreign-library-function "libSDL2_image" "__modff" 
     #:return-type float       #:arg-types (float '* ))


;; definition 787 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:156:1 <Spelling=<scratch space>:138:1>
(define expm1f
   (foreign-library-function "libSDL2_image" "expm1f" 
     #:return-type float       #:arg-types (float ))


;; definition 788 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:156:1 <Spelling=<scratch space>:140:1>
(define --expm1f
   (foreign-library-function "libSDL2_image" "__expm1f" 
     #:return-type float       #:arg-types (float ))


;; definition 789 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:159:1 <Spelling=<scratch space>:143:1>
(define log1pf
   (foreign-library-function "libSDL2_image" "log1pf" 
     #:return-type float       #:arg-types (float ))


;; definition 790 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:159:1 <Spelling=<scratch space>:145:1>
(define --log1pf
   (foreign-library-function "libSDL2_image" "__log1pf" 
     #:return-type float       #:arg-types (float ))


;; definition 791 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:162:1 <Spelling=<scratch space>:146:1>
(define logbf
   (foreign-library-function "libSDL2_image" "logbf" 
     #:return-type float       #:arg-types (float ))


;; definition 792 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:162:1 <Spelling=<scratch space>:148:1>
(define --logbf
   (foreign-library-function "libSDL2_image" "__logbf" 
     #:return-type float       #:arg-types (float ))


;; definition 793 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:167:1 <Spelling=<scratch space>:151:1>
(define exp2f
   (foreign-library-function "libSDL2_image" "exp2f" 
     #:return-type float       #:arg-types (float ))


;; definition 794 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:167:1 <Spelling=<scratch space>:153:1>
(define --exp2f
   (foreign-library-function "libSDL2_image" "__exp2f" 
     #:return-type float       #:arg-types (float ))


;; definition 795 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:170:1 <Spelling=<scratch space>:156:1>
(define log2f
   (foreign-library-function "libSDL2_image" "log2f" 
     #:return-type float       #:arg-types (float ))


;; definition 796 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:170:1 <Spelling=<scratch space>:158:1>
(define --log2f
   (foreign-library-function "libSDL2_image" "__log2f" 
     #:return-type float       #:arg-types (float ))


;; definition 797 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:177:1 <Spelling=<scratch space>:161:1>
(define powf
   (foreign-library-function "libSDL2_image" "powf" 
     #:return-type float       #:arg-types (float float ))


;; definition 798 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:177:1 <Spelling=<scratch space>:163:1>
(define --powf
   (foreign-library-function "libSDL2_image" "__powf" 
     #:return-type float       #:arg-types (float float ))


;; definition 799 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:180:1 <Spelling=<scratch space>:164:1>
(define sqrtf
   (foreign-library-function "libSDL2_image" "sqrtf" 
     #:return-type float       #:arg-types (float ))


;; definition 800 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:180:1 <Spelling=<scratch space>:166:1>
(define --sqrtf
   (foreign-library-function "libSDL2_image" "__sqrtf" 
     #:return-type float       #:arg-types (float ))


;; definition 801 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:184:1 <Spelling=<scratch space>:169:1>
(define hypotf
   (foreign-library-function "libSDL2_image" "hypotf" 
     #:return-type float       #:arg-types (float float ))


;; definition 802 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:184:1 <Spelling=<scratch space>:171:1>
(define --hypotf
   (foreign-library-function "libSDL2_image" "__hypotf" 
     #:return-type float       #:arg-types (float float ))


;; definition 803 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:189:1 <Spelling=<scratch space>:174:1>
(define cbrtf
   (foreign-library-function "libSDL2_image" "cbrtf" 
     #:return-type float       #:arg-types (float ))


;; definition 804 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:189:1 <Spelling=<scratch space>:176:1>
(define --cbrtf
   (foreign-library-function "libSDL2_image" "__cbrtf" 
     #:return-type float       #:arg-types (float ))


;; definition 805 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:213:1 <Spelling=<scratch space>:178:1>
(define ceilf
   (foreign-library-function "libSDL2_image" "ceilf" 
     #:return-type float       #:arg-types (float ))


;; definition 806 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:216:1 <Spelling=<scratch space>:179:1>
(define fabsf
   (foreign-library-function "libSDL2_image" "fabsf" 
     #:return-type float       #:arg-types (float ))


;; definition 807 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:219:1 <Spelling=<scratch space>:180:1>
(define floorf
   (foreign-library-function "libSDL2_image" "floorf" 
     #:return-type float       #:arg-types (float ))


;; definition 808 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:222:1 <Spelling=<scratch space>:181:1>
(define fmodf
   (foreign-library-function "libSDL2_image" "fmodf" 
     #:return-type float       #:arg-types (float float ))


;; definition 809 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:222:1 <Spelling=<scratch space>:183:1>
(define --fmodf
   (foreign-library-function "libSDL2_image" "__fmodf" 
     #:return-type float       #:arg-types (float float ))


;; definition 810 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:231:1 <Spelling=<scratch space>:184:1>
(define isinff
   (foreign-library-function "libSDL2_image" "isinff" 
     #:return-type int       #:arg-types (float ))


;; definition 811 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:237:1 <Spelling=<scratch space>:185:1>
(define finitef
   (foreign-library-function "libSDL2_image" "finitef" 
     #:return-type int       #:arg-types (float ))


;; definition 812 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:241:1 <Spelling=<scratch space>:186:1>
(define dremf
   (foreign-library-function "libSDL2_image" "dremf" 
     #:return-type float       #:arg-types (float float ))


;; definition 813 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:241:1 <Spelling=<scratch space>:188:1>
(define --dremf
   (foreign-library-function "libSDL2_image" "__dremf" 
     #:return-type float       #:arg-types (float float ))


;; definition 814 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:245:1 <Spelling=<scratch space>:189:1>
(define significandf
   (foreign-library-function "libSDL2_image" "significandf" 
     #:return-type float       #:arg-types (float ))


;; definition 815 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:245:1 <Spelling=<scratch space>:191:1>
(define --significandf
   (foreign-library-function "libSDL2_image" "__significandf" 
     #:return-type float       #:arg-types (float ))


;; definition 816 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:252:1 <Spelling=<scratch space>:192:1>
(define copysignf
   (foreign-library-function "libSDL2_image" "copysignf" 
     #:return-type float       #:arg-types (float float ))


;; definition 817 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:257:1 <Spelling=<scratch space>:193:1>
(define nanf
   (foreign-library-function "libSDL2_image" "nanf" 
     #:return-type float       #:arg-types ('* ))


;; definition 818 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:257:1 <Spelling=<scratch space>:195:1>
(define --nanf
   (foreign-library-function "libSDL2_image" "__nanf" 
     #:return-type float       #:arg-types ('* ))


;; definition 819 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:267:1 <Spelling=<scratch space>:196:1>
(define isnanf
   (foreign-library-function "libSDL2_image" "isnanf" 
     #:return-type int       #:arg-types (float ))


;; definition 820 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:274:1 <Spelling=<scratch space>:197:1>
(define j0f
   (foreign-library-function "libSDL2_image" "j0f" 
     #:return-type float       #:arg-types (float ))


;; definition 821 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:274:1 <Spelling=<scratch space>:199:1>
(define --j0f
   (foreign-library-function "libSDL2_image" "__j0f" 
     #:return-type float       #:arg-types (float ))


;; definition 822 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:275:1 <Spelling=<scratch space>:200:1>
(define j1f
   (foreign-library-function "libSDL2_image" "j1f" 
     #:return-type float       #:arg-types (float ))


;; definition 823 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:275:1 <Spelling=<scratch space>:202:1>
(define --j1f
   (foreign-library-function "libSDL2_image" "__j1f" 
     #:return-type float       #:arg-types (float ))


;; definition 824 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:276:1 <Spelling=<scratch space>:203:1>
(define jnf
   (foreign-library-function "libSDL2_image" "jnf" 
     #:return-type float       #:arg-types (int float ))


;; definition 825 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:276:1 <Spelling=<scratch space>:205:1>
(define --jnf
   (foreign-library-function "libSDL2_image" "__jnf" 
     #:return-type float       #:arg-types (int float ))


;; definition 826 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:277:1 <Spelling=<scratch space>:206:1>
(define y0f
   (foreign-library-function "libSDL2_image" "y0f" 
     #:return-type float       #:arg-types (float ))


;; definition 827 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:277:1 <Spelling=<scratch space>:208:1>
(define --y0f
   (foreign-library-function "libSDL2_image" "__y0f" 
     #:return-type float       #:arg-types (float ))


;; definition 828 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:278:1 <Spelling=<scratch space>:209:1>
(define y1f
   (foreign-library-function "libSDL2_image" "y1f" 
     #:return-type float       #:arg-types (float ))


;; definition 829 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:278:1 <Spelling=<scratch space>:211:1>
(define --y1f
   (foreign-library-function "libSDL2_image" "__y1f" 
     #:return-type float       #:arg-types (float ))


;; definition 830 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:279:1 <Spelling=<scratch space>:212:1>
(define ynf
   (foreign-library-function "libSDL2_image" "ynf" 
     #:return-type float       #:arg-types (int float ))


;; definition 831 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:279:1 <Spelling=<scratch space>:214:1>
(define --ynf
   (foreign-library-function "libSDL2_image" "__ynf" 
     #:return-type float       #:arg-types (int float ))


;; definition 832 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:285:1 <Spelling=<scratch space>:217:1>
(define erff
   (foreign-library-function "libSDL2_image" "erff" 
     #:return-type float       #:arg-types (float ))


;; definition 833 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:285:1 <Spelling=<scratch space>:219:1>
(define --erff
   (foreign-library-function "libSDL2_image" "__erff" 
     #:return-type float       #:arg-types (float ))


;; definition 834 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:286:1 <Spelling=<scratch space>:222:1>
(define erfcf
   (foreign-library-function "libSDL2_image" "erfcf" 
     #:return-type float       #:arg-types (float ))


;; definition 835 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:286:1 <Spelling=<scratch space>:224:1>
(define --erfcf
   (foreign-library-function "libSDL2_image" "__erfcf" 
     #:return-type float       #:arg-types (float ))


;; definition 836 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:287:1 <Spelling=<scratch space>:225:1>
(define lgammaf
   (foreign-library-function "libSDL2_image" "lgammaf" 
     #:return-type float       #:arg-types (float ))


;; definition 837 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:287:1 <Spelling=<scratch space>:227:1>
(define --lgammaf
   (foreign-library-function "libSDL2_image" "__lgammaf" 
     #:return-type float       #:arg-types (float ))


;; definition 838 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:292:1 <Spelling=<scratch space>:228:1>
(define tgammaf
   (foreign-library-function "libSDL2_image" "tgammaf" 
     #:return-type float       #:arg-types (float ))


;; definition 839 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:292:1 <Spelling=<scratch space>:230:1>
(define --tgammaf
   (foreign-library-function "libSDL2_image" "__tgammaf" 
     #:return-type float       #:arg-types (float ))


;; definition 840 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:298:1 <Spelling=<scratch space>:231:1>
(define gammaf
   (foreign-library-function "libSDL2_image" "gammaf" 
     #:return-type float       #:arg-types (float ))


;; definition 841 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:298:1 <Spelling=<scratch space>:233:1>
(define --gammaf
   (foreign-library-function "libSDL2_image" "__gammaf" 
     #:return-type float       #:arg-types (float ))


;; definition 842 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:306:1 <Spelling=<scratch space>:235:1>
(define lgammaf-r
   (foreign-library-function "libSDL2_image" "lgammaf_r" 
     #:return-type float       #:arg-types (float '* ))


;; definition 843 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:306:1 <Spelling=<scratch space>:238:1>
(define --lgammaf-r
   (foreign-library-function "libSDL2_image" "__lgammaf_r" 
     #:return-type float       #:arg-types (float '* ))


;; definition 844 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:313:1 <Spelling=<scratch space>:239:1>
(define rintf
   (foreign-library-function "libSDL2_image" "rintf" 
     #:return-type float       #:arg-types (float ))


;; definition 845 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:313:1 <Spelling=<scratch space>:241:1>
(define --rintf
   (foreign-library-function "libSDL2_image" "__rintf" 
     #:return-type float       #:arg-types (float ))


;; definition 846 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:316:1 <Spelling=<scratch space>:242:1>
(define nextafterf
   (foreign-library-function "libSDL2_image" "nextafterf" 
     #:return-type float       #:arg-types (float float ))


;; definition 847 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:316:1 <Spelling=<scratch space>:244:1>
(define --nextafterf
   (foreign-library-function "libSDL2_image" "__nextafterf" 
     #:return-type float       #:arg-types (float float ))


;; definition 850 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:329:1 <Spelling=<scratch space>:249:1>
(define remainderf
   (foreign-library-function "libSDL2_image" "remainderf" 
     #:return-type float       #:arg-types (float float ))


;; definition 851 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:329:1 <Spelling=<scratch space>:251:1>
(define --remainderf
   (foreign-library-function "libSDL2_image" "__remainderf" 
     #:return-type float       #:arg-types (float float ))


;; definition 852 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:333:1 <Spelling=<scratch space>:252:1>
(define scalbnf
   (foreign-library-function "libSDL2_image" "scalbnf" 
     #:return-type float       #:arg-types (float int ))


;; definition 853 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:333:1 <Spelling=<scratch space>:254:1>
(define --scalbnf
   (foreign-library-function "libSDL2_image" "__scalbnf" 
     #:return-type float       #:arg-types (float int ))


;; definition 854 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:337:1 <Spelling=<scratch space>:255:1>
(define ilogbf
   (foreign-library-function "libSDL2_image" "ilogbf" 
     #:return-type int       #:arg-types (float ))


;; definition 855 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:337:1 <Spelling=<scratch space>:257:1>
(define --ilogbf
   (foreign-library-function "libSDL2_image" "__ilogbf" 
     #:return-type int       #:arg-types (float ))


;; definition 856 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:347:1 <Spelling=<scratch space>:259:1>
(define scalblnf
   (foreign-library-function "libSDL2_image" "scalblnf" 
     #:return-type float       #:arg-types (float long ))


;; definition 857 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:347:1 <Spelling=<scratch space>:261:1>
(define --scalblnf
   (foreign-library-function "libSDL2_image" "__scalblnf" 
     #:return-type float       #:arg-types (float long ))


;; definition 858 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:351:1 <Spelling=<scratch space>:262:1>
(define nearbyintf
   (foreign-library-function "libSDL2_image" "nearbyintf" 
     #:return-type float       #:arg-types (float ))


;; definition 859 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:351:1 <Spelling=<scratch space>:264:1>
(define --nearbyintf
   (foreign-library-function "libSDL2_image" "__nearbyintf" 
     #:return-type float       #:arg-types (float ))


;; definition 860 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:355:1 <Spelling=<scratch space>:265:1>
(define roundf
   (foreign-library-function "libSDL2_image" "roundf" 
     #:return-type float       #:arg-types (float ))


;; definition 861 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:359:1 <Spelling=<scratch space>:266:1>
(define truncf
   (foreign-library-function "libSDL2_image" "truncf" 
     #:return-type float       #:arg-types (float ))


;; definition 862 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:364:1 <Spelling=<scratch space>:267:1>
(define remquof
   (foreign-library-function "libSDL2_image" "remquof" 
     #:return-type float       #:arg-types (float float '* ))


;; definition 863 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:364:1 <Spelling=<scratch space>:269:1>
(define --remquof
   (foreign-library-function "libSDL2_image" "__remquof" 
     #:return-type float       #:arg-types (float float '* ))


;; definition 864 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:371:1 <Spelling=<scratch space>:270:1>
(define lrintf
   (foreign-library-function "libSDL2_image" "lrintf" 
     #:return-type long       #:arg-types (float ))


;; definition 865 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:371:1 <Spelling=<scratch space>:272:1>
(define --lrintf
   (foreign-library-function "libSDL2_image" "__lrintf" 
     #:return-type long       #:arg-types (float ))


;; definition 868 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:377:1 <Spelling=<scratch space>:276:1>
(define lroundf
   (foreign-library-function "libSDL2_image" "lroundf" 
     #:return-type long       #:arg-types (float ))


;; definition 869 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:377:1 <Spelling=<scratch space>:278:1>
(define --lroundf
   (foreign-library-function "libSDL2_image" "__lroundf" 
     #:return-type long       #:arg-types (float ))


;; definition 872 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:383:1 <Spelling=<scratch space>:282:1>
(define fdimf
   (foreign-library-function "libSDL2_image" "fdimf" 
     #:return-type float       #:arg-types (float float ))


;; definition 873 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:383:1 <Spelling=<scratch space>:284:1>
(define --fdimf
   (foreign-library-function "libSDL2_image" "__fdimf" 
     #:return-type float       #:arg-types (float float ))


;; definition 874 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:387:1 <Spelling=<scratch space>:286:1>
(define fmaxf
   (foreign-library-function "libSDL2_image" "fmaxf" 
     #:return-type float       #:arg-types (float float ))


;; definition 875 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:390:1 <Spelling=<scratch space>:287:1>
(define fminf
   (foreign-library-function "libSDL2_image" "fminf" 
     #:return-type float       #:arg-types (float float ))


;; definition 876 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:394:1 <Spelling=<scratch space>:288:1>
(define fmaf
   (foreign-library-function "libSDL2_image" "fmaf" 
     #:return-type float       #:arg-types (float float float ))


;; definition 877 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:394:1 <Spelling=<scratch space>:290:1>
(define --fmaf
   (foreign-library-function "libSDL2_image" "__fmaf" 
     #:return-type float       #:arg-types (float float float ))


;; definition 878 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:489:1 <Spelling=<scratch space>:296:1>
(define scalbf
   (foreign-library-function "libSDL2_image" "scalbf" 
     #:return-type float       #:arg-types (float float ))


;; definition 879 from /usr/include/x86_64-linux-gnu/bits/mathcalls.h:489:1 <Spelling=<scratch space>:298:1>
(define --scalbf
   (foreign-library-function "libSDL2_image" "__scalbf" 
     #:return-type float       #:arg-types (float float ))


;; definition 1042 from /usr/include/SDL2/SDL_stdinc.h:460:30
(define SDL-free
   (foreign-library-function "libSDL2_image" "sdl_free" 
     #:return-type void       #:arg-types ('* ))


;; definition 1047 from /usr/include/SDL2/SDL_stdinc.h:472:30
(define SDL-GetOriginalMemoryFunctions
   (foreign-library-function "libSDL2_image" "sdl_getoriginalmemoryfunctions" 
     #:return-type void       #:arg-types ('* '* '* '* ))


;; definition 1048 from /usr/include/SDL2/SDL_stdinc.h:482:30
(define SDL-GetMemoryFunctions
   (foreign-library-function "libSDL2_image" "sdl_getmemoryfunctions" 
     #:return-type void       #:arg-types ('* '* '* '* ))


;; definition 1049 from /usr/include/SDL2/SDL_stdinc.h:492:29
(define SDL-SetMemoryFunctions
   (foreign-library-function "libSDL2_image" "sdl_setmemoryfunctions" 
     #:return-type int       #:arg-types (?fn-ptr? ?fn-ptr? ?fn-ptr? ?fn-ptr? ))




;; definition 1051 from /usr/include/SDL2/SDL_stdinc.h:504:31
(define SDL-getenv
   (foreign-library-function "libSDL2_image" "sdl_getenv" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1052 from /usr/include/SDL2/SDL_stdinc.h:505:29
(define SDL-setenv
   (foreign-library-function "libSDL2_image" "sdl_setenv" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 1056 from /usr/include/SDL2/SDL_stdinc.h:511:29
(define SDL-abs
   (foreign-library-function "libSDL2_image" "sdl_abs" 
     #:return-type int       #:arg-types (int ))


;; definition 1057 from /usr/include/SDL2/SDL_stdinc.h:518:29
(define SDL-isalpha
   (foreign-library-function "libSDL2_image" "sdl_isalpha" 
     #:return-type int       #:arg-types (int ))


;; definition 1058 from /usr/include/SDL2/SDL_stdinc.h:519:29
(define SDL-isalnum
   (foreign-library-function "libSDL2_image" "sdl_isalnum" 
     #:return-type int       #:arg-types (int ))


;; definition 1059 from /usr/include/SDL2/SDL_stdinc.h:520:29
(define SDL-isblank
   (foreign-library-function "libSDL2_image" "sdl_isblank" 
     #:return-type int       #:arg-types (int ))


;; definition 1060 from /usr/include/SDL2/SDL_stdinc.h:521:29
(define SDL-iscntrl
   (foreign-library-function "libSDL2_image" "sdl_iscntrl" 
     #:return-type int       #:arg-types (int ))


;; definition 1061 from /usr/include/SDL2/SDL_stdinc.h:522:29
(define SDL-isdigit
   (foreign-library-function "libSDL2_image" "sdl_isdigit" 
     #:return-type int       #:arg-types (int ))


;; definition 1062 from /usr/include/SDL2/SDL_stdinc.h:523:29
(define SDL-isxdigit
   (foreign-library-function "libSDL2_image" "sdl_isxdigit" 
     #:return-type int       #:arg-types (int ))


;; definition 1063 from /usr/include/SDL2/SDL_stdinc.h:524:29
(define SDL-ispunct
   (foreign-library-function "libSDL2_image" "sdl_ispunct" 
     #:return-type int       #:arg-types (int ))


;; definition 1064 from /usr/include/SDL2/SDL_stdinc.h:525:29
(define SDL-isspace
   (foreign-library-function "libSDL2_image" "sdl_isspace" 
     #:return-type int       #:arg-types (int ))


;; definition 1065 from /usr/include/SDL2/SDL_stdinc.h:526:29
(define SDL-isupper
   (foreign-library-function "libSDL2_image" "sdl_isupper" 
     #:return-type int       #:arg-types (int ))


;; definition 1066 from /usr/include/SDL2/SDL_stdinc.h:527:29
(define SDL-islower
   (foreign-library-function "libSDL2_image" "sdl_islower" 
     #:return-type int       #:arg-types (int ))


;; definition 1067 from /usr/include/SDL2/SDL_stdinc.h:528:29
(define SDL-isprint
   (foreign-library-function "libSDL2_image" "sdl_isprint" 
     #:return-type int       #:arg-types (int ))


;; definition 1068 from /usr/include/SDL2/SDL_stdinc.h:529:29
(define SDL-isgraph
   (foreign-library-function "libSDL2_image" "sdl_isgraph" 
     #:return-type int       #:arg-types (int ))


;; definition 1069 from /usr/include/SDL2/SDL_stdinc.h:530:29
(define SDL-toupper
   (foreign-library-function "libSDL2_image" "sdl_toupper" 
     #:return-type int       #:arg-types (int ))


;; definition 1070 from /usr/include/SDL2/SDL_stdinc.h:531:29
(define SDL-tolower
   (foreign-library-function "libSDL2_image" "sdl_tolower" 
     #:return-type int       #:arg-types (int ))


;; definition 1081 from /usr/include/SDL2/SDL_stdinc.h:585:34
(define SDL-wcsdup
   (foreign-library-function "libSDL2_image" "sdl_wcsdup" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1082 from /usr/include/SDL2/SDL_stdinc.h:586:34
(define SDL-wcsstr
   (foreign-library-function "libSDL2_image" "sdl_wcsstr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 1083 from /usr/include/SDL2/SDL_stdinc.h:588:29
(define SDL-wcscmp
   (foreign-library-function "libSDL2_image" "sdl_wcscmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1085 from /usr/include/SDL2/SDL_stdinc.h:590:29
(define SDL-wcscasecmp
   (foreign-library-function "libSDL2_image" "sdl_wcscasecmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1091 from /usr/include/SDL2/SDL_stdinc.h:597:31
(define SDL-strdup
   (foreign-library-function "libSDL2_image" "sdl_strdup" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1092 from /usr/include/SDL2/SDL_stdinc.h:598:31
(define SDL-strrev
   (foreign-library-function "libSDL2_image" "sdl_strrev" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1093 from /usr/include/SDL2/SDL_stdinc.h:599:31
(define SDL-strupr
   (foreign-library-function "libSDL2_image" "sdl_strupr" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1094 from /usr/include/SDL2/SDL_stdinc.h:600:31
(define SDL-strlwr
   (foreign-library-function "libSDL2_image" "sdl_strlwr" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1095 from /usr/include/SDL2/SDL_stdinc.h:601:31
(define SDL-strchr
   (foreign-library-function "libSDL2_image" "sdl_strchr" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 1096 from /usr/include/SDL2/SDL_stdinc.h:602:31
(define SDL-strrchr
   (foreign-library-function "libSDL2_image" "sdl_strrchr" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 1097 from /usr/include/SDL2/SDL_stdinc.h:603:31
(define SDL-strstr
   (foreign-library-function "libSDL2_image" "sdl_strstr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 1098 from /usr/include/SDL2/SDL_stdinc.h:604:31
(define SDL-strcasestr
   (foreign-library-function "libSDL2_image" "sdl_strcasestr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 1099 from /usr/include/SDL2/SDL_stdinc.h:605:31
(define SDL-strtokr
   (foreign-library-function "libSDL2_image" "sdl_strtokr" 
     #:return-type '*       #:arg-types ('* '* '* ))


;; definition 1102 from /usr/include/SDL2/SDL_stdinc.h:609:31
(define SDL-itoa
   (foreign-library-function "libSDL2_image" "sdl_itoa" 
     #:return-type '*       #:arg-types (int '* int ))


;; definition 1103 from /usr/include/SDL2/SDL_stdinc.h:610:31
(define SDL-uitoa
   (foreign-library-function "libSDL2_image" "sdl_uitoa" 
     #:return-type '*       #:arg-types (uint '* int ))


;; definition 1104 from /usr/include/SDL2/SDL_stdinc.h:611:31
(define SDL-ltoa
   (foreign-library-function "libSDL2_image" "sdl_ltoa" 
     #:return-type '*       #:arg-types (long '* int ))


;; definition 1105 from /usr/include/SDL2/SDL_stdinc.h:612:31
(define SDL-ultoa
   (foreign-library-function "libSDL2_image" "sdl_ultoa" 
     #:return-type '*       #:arg-types (ulong '* int ))


;; definition 1108 from /usr/include/SDL2/SDL_stdinc.h:616:29
(define SDL-atoi
   (foreign-library-function "libSDL2_image" "sdl_atoi" 
     #:return-type int       #:arg-types ('* ))


;; definition 1109 from /usr/include/SDL2/SDL_stdinc.h:617:32
(define SDL-atof
   (foreign-library-function "libSDL2_image" "sdl_atof" 
     #:return-type double       #:arg-types ('* ))


;; definition 1110 from /usr/include/SDL2/SDL_stdinc.h:618:30
(define SDL-strtol
   (foreign-library-function "libSDL2_image" "sdl_strtol" 
     #:return-type long       #:arg-types ('* '* int ))


;; definition 1111 from /usr/include/SDL2/SDL_stdinc.h:619:39
(define SDL-strtoul
   (foreign-library-function "libSDL2_image" "sdl_strtoul" 
     #:return-type ulong       #:arg-types ('* '* int ))


;; definition 1114 from /usr/include/SDL2/SDL_stdinc.h:622:32
(define SDL-strtod
   (foreign-library-function "libSDL2_image" "sdl_strtod" 
     #:return-type double       #:arg-types ('* '* ))


;; definition 1115 from /usr/include/SDL2/SDL_stdinc.h:624:29
(define SDL-strcmp
   (foreign-library-function "libSDL2_image" "sdl_strcmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1117 from /usr/include/SDL2/SDL_stdinc.h:626:29
(define SDL-strcasecmp
   (foreign-library-function "libSDL2_image" "sdl_strcasecmp" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1119 from /usr/include/SDL2/SDL_stdinc.h:629:29
(define SDL-sscanf
   (foreign-library-function "libSDL2_image" "sdl_sscanf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1123 from /usr/include/SDL2/SDL_stdinc.h:633:29
(define SDL-asprintf
   (foreign-library-function "libSDL2_image" "sdl_asprintf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1125 from /usr/include/SDL2/SDL_stdinc.h:656:32
(define SDL-acos
   (foreign-library-function "libSDL2_image" "sdl_acos" 
     #:return-type double       #:arg-types (double ))


;; definition 1126 from /usr/include/SDL2/SDL_stdinc.h:657:31
(define SDL-acosf
   (foreign-library-function "libSDL2_image" "sdl_acosf" 
     #:return-type float       #:arg-types (float ))


;; definition 1127 from /usr/include/SDL2/SDL_stdinc.h:658:32
(define SDL-asin
   (foreign-library-function "libSDL2_image" "sdl_asin" 
     #:return-type double       #:arg-types (double ))


;; definition 1128 from /usr/include/SDL2/SDL_stdinc.h:659:31
(define SDL-asinf
   (foreign-library-function "libSDL2_image" "sdl_asinf" 
     #:return-type float       #:arg-types (float ))


;; definition 1129 from /usr/include/SDL2/SDL_stdinc.h:660:32
(define SDL-atan
   (foreign-library-function "libSDL2_image" "sdl_atan" 
     #:return-type double       #:arg-types (double ))


;; definition 1130 from /usr/include/SDL2/SDL_stdinc.h:661:31
(define SDL-atanf
   (foreign-library-function "libSDL2_image" "sdl_atanf" 
     #:return-type float       #:arg-types (float ))


;; definition 1131 from /usr/include/SDL2/SDL_stdinc.h:662:32
(define SDL-atan2
   (foreign-library-function "libSDL2_image" "sdl_atan2" 
     #:return-type double       #:arg-types (double double ))


;; definition 1132 from /usr/include/SDL2/SDL_stdinc.h:663:31
(define SDL-atan2f
   (foreign-library-function "libSDL2_image" "sdl_atan2f" 
     #:return-type float       #:arg-types (float float ))


;; definition 1133 from /usr/include/SDL2/SDL_stdinc.h:664:32
(define SDL-ceil
   (foreign-library-function "libSDL2_image" "sdl_ceil" 
     #:return-type double       #:arg-types (double ))


;; definition 1134 from /usr/include/SDL2/SDL_stdinc.h:665:31
(define SDL-ceilf
   (foreign-library-function "libSDL2_image" "sdl_ceilf" 
     #:return-type float       #:arg-types (float ))


;; definition 1135 from /usr/include/SDL2/SDL_stdinc.h:666:32
(define SDL-copysign
   (foreign-library-function "libSDL2_image" "sdl_copysign" 
     #:return-type double       #:arg-types (double double ))


;; definition 1136 from /usr/include/SDL2/SDL_stdinc.h:667:31
(define SDL-copysignf
   (foreign-library-function "libSDL2_image" "sdl_copysignf" 
     #:return-type float       #:arg-types (float float ))


;; definition 1137 from /usr/include/SDL2/SDL_stdinc.h:668:32
(define SDL-cos
   (foreign-library-function "libSDL2_image" "sdl_cos" 
     #:return-type double       #:arg-types (double ))


;; definition 1138 from /usr/include/SDL2/SDL_stdinc.h:669:31
(define SDL-cosf
   (foreign-library-function "libSDL2_image" "sdl_cosf" 
     #:return-type float       #:arg-types (float ))


;; definition 1139 from /usr/include/SDL2/SDL_stdinc.h:670:32
(define SDL-exp
   (foreign-library-function "libSDL2_image" "sdl_exp" 
     #:return-type double       #:arg-types (double ))


;; definition 1140 from /usr/include/SDL2/SDL_stdinc.h:671:31
(define SDL-expf
   (foreign-library-function "libSDL2_image" "sdl_expf" 
     #:return-type float       #:arg-types (float ))


;; definition 1141 from /usr/include/SDL2/SDL_stdinc.h:672:32
(define SDL-fabs
   (foreign-library-function "libSDL2_image" "sdl_fabs" 
     #:return-type double       #:arg-types (double ))


;; definition 1142 from /usr/include/SDL2/SDL_stdinc.h:673:31
(define SDL-fabsf
   (foreign-library-function "libSDL2_image" "sdl_fabsf" 
     #:return-type float       #:arg-types (float ))


;; definition 1143 from /usr/include/SDL2/SDL_stdinc.h:674:32
(define SDL-floor
   (foreign-library-function "libSDL2_image" "sdl_floor" 
     #:return-type double       #:arg-types (double ))


;; definition 1144 from /usr/include/SDL2/SDL_stdinc.h:675:31
(define SDL-floorf
   (foreign-library-function "libSDL2_image" "sdl_floorf" 
     #:return-type float       #:arg-types (float ))


;; definition 1145 from /usr/include/SDL2/SDL_stdinc.h:676:32
(define SDL-trunc
   (foreign-library-function "libSDL2_image" "sdl_trunc" 
     #:return-type double       #:arg-types (double ))


;; definition 1146 from /usr/include/SDL2/SDL_stdinc.h:677:31
(define SDL-truncf
   (foreign-library-function "libSDL2_image" "sdl_truncf" 
     #:return-type float       #:arg-types (float ))


;; definition 1147 from /usr/include/SDL2/SDL_stdinc.h:678:32
(define SDL-fmod
   (foreign-library-function "libSDL2_image" "sdl_fmod" 
     #:return-type double       #:arg-types (double double ))


;; definition 1148 from /usr/include/SDL2/SDL_stdinc.h:679:31
(define SDL-fmodf
   (foreign-library-function "libSDL2_image" "sdl_fmodf" 
     #:return-type float       #:arg-types (float float ))


;; definition 1149 from /usr/include/SDL2/SDL_stdinc.h:680:32
(define SDL-log
   (foreign-library-function "libSDL2_image" "sdl_log" 
     #:return-type double       #:arg-types (double ))


;; definition 1150 from /usr/include/SDL2/SDL_stdinc.h:681:31
(define SDL-logf
   (foreign-library-function "libSDL2_image" "sdl_logf" 
     #:return-type float       #:arg-types (float ))


;; definition 1151 from /usr/include/SDL2/SDL_stdinc.h:682:32
(define SDL-log10
   (foreign-library-function "libSDL2_image" "sdl_log10" 
     #:return-type double       #:arg-types (double ))


;; definition 1152 from /usr/include/SDL2/SDL_stdinc.h:683:31
(define SDL-log10f
   (foreign-library-function "libSDL2_image" "sdl_log10f" 
     #:return-type float       #:arg-types (float ))


;; definition 1153 from /usr/include/SDL2/SDL_stdinc.h:684:32
(define SDL-pow
   (foreign-library-function "libSDL2_image" "sdl_pow" 
     #:return-type double       #:arg-types (double double ))


;; definition 1154 from /usr/include/SDL2/SDL_stdinc.h:685:31
(define SDL-powf
   (foreign-library-function "libSDL2_image" "sdl_powf" 
     #:return-type float       #:arg-types (float float ))


;; definition 1155 from /usr/include/SDL2/SDL_stdinc.h:686:32
(define SDL-round
   (foreign-library-function "libSDL2_image" "sdl_round" 
     #:return-type double       #:arg-types (double ))


;; definition 1156 from /usr/include/SDL2/SDL_stdinc.h:687:31
(define SDL-roundf
   (foreign-library-function "libSDL2_image" "sdl_roundf" 
     #:return-type float       #:arg-types (float ))


;; definition 1157 from /usr/include/SDL2/SDL_stdinc.h:688:30
(define SDL-lround
   (foreign-library-function "libSDL2_image" "sdl_lround" 
     #:return-type long       #:arg-types (double ))


;; definition 1158 from /usr/include/SDL2/SDL_stdinc.h:689:30
(define SDL-lroundf
   (foreign-library-function "libSDL2_image" "sdl_lroundf" 
     #:return-type long       #:arg-types (float ))


;; definition 1159 from /usr/include/SDL2/SDL_stdinc.h:690:32
(define SDL-scalbn
   (foreign-library-function "libSDL2_image" "sdl_scalbn" 
     #:return-type double       #:arg-types (double int ))


;; definition 1160 from /usr/include/SDL2/SDL_stdinc.h:691:31
(define SDL-scalbnf
   (foreign-library-function "libSDL2_image" "sdl_scalbnf" 
     #:return-type float       #:arg-types (float int ))


;; definition 1161 from /usr/include/SDL2/SDL_stdinc.h:692:32
(define SDL-sin
   (foreign-library-function "libSDL2_image" "sdl_sin" 
     #:return-type double       #:arg-types (double ))


;; definition 1162 from /usr/include/SDL2/SDL_stdinc.h:693:31
(define SDL-sinf
   (foreign-library-function "libSDL2_image" "sdl_sinf" 
     #:return-type float       #:arg-types (float ))


;; definition 1163 from /usr/include/SDL2/SDL_stdinc.h:694:32
(define SDL-sqrt
   (foreign-library-function "libSDL2_image" "sdl_sqrt" 
     #:return-type double       #:arg-types (double ))


;; definition 1164 from /usr/include/SDL2/SDL_stdinc.h:695:31
(define SDL-sqrtf
   (foreign-library-function "libSDL2_image" "sdl_sqrtf" 
     #:return-type float       #:arg-types (float ))


;; definition 1165 from /usr/include/SDL2/SDL_stdinc.h:696:32
(define SDL-tan
   (foreign-library-function "libSDL2_image" "sdl_tan" 
     #:return-type double       #:arg-types (double ))


;; definition 1166 from /usr/include/SDL2/SDL_stdinc.h:697:31
(define SDL-tanf
   (foreign-library-function "libSDL2_image" "sdl_tanf" 
     #:return-type float       #:arg-types (float ))


;; definition 1179 from /usr/include/SDL2/SDL_main.h:155:29
(define SDL-main
   (foreign-library-function "libSDL2_image" "sdl_main" 
     #:return-type int       #:arg-types (int '* ))




;; definition 1185 from /usr/include/SDL2/SDL_assert.h:133:41
(define SDL-ReportAssertion
   (foreign-library-function "libSDL2_image" "sdl_reportassertion" 
     #:return-type int       #:arg-types ('* '* '* int ))


;; definition 1187 from /usr/include/SDL2/SDL_assert.h:224:30
(define SDL-SetAssertionHandler
   (foreign-library-function "libSDL2_image" "sdl_setassertionhandler" 
     #:return-type void       #:arg-types (?fn-ptr? '* ))




;; definition 1189 from /usr/include/SDL2/SDL_assert.h:266:46
(define SDL-GetAssertionHandler
   (foreign-library-function "libSDL2_image" "sdl_getassertionhandler" 
     #:return-type ?fn-ptr?       #:arg-types ('* ))






;; definition 1193 from /usr/include/SDL2/SDL_atomic.h:97:34
(define SDL-AtomicTryLock
   (foreign-library-function "libSDL2_image" "sdl_atomictrylock" 
     #:return-type int       #:arg-types ('* ))


;; definition 1194 from /usr/include/SDL2/SDL_atomic.h:112:30
(define SDL-AtomicLock
   (foreign-library-function "libSDL2_image" "sdl_atomiclock" 
     #:return-type void       #:arg-types ('* ))


;; definition 1195 from /usr/include/SDL2/SDL_atomic.h:129:30
(define SDL-AtomicUnlock
   (foreign-library-function "libSDL2_image" "sdl_atomicunlock" 
     #:return-type void       #:arg-types ('* ))






;; definition 1200 from /usr/include/SDL2/SDL_atomic.h:276:34
(define SDL-AtomicCAS
   (foreign-library-function "libSDL2_image" "sdl_atomiccas" 
     #:return-type int       #:arg-types ('* int int ))


;; definition 1201 from /usr/include/SDL2/SDL_atomic.h:294:29
(define SDL-AtomicSet
   (foreign-library-function "libSDL2_image" "sdl_atomicset" 
     #:return-type int       #:arg-types ('* int ))


;; definition 1202 from /usr/include/SDL2/SDL_atomic.h:309:29
(define SDL-AtomicGet
   (foreign-library-function "libSDL2_image" "sdl_atomicget" 
     #:return-type int       #:arg-types ('* ))


;; definition 1203 from /usr/include/SDL2/SDL_atomic.h:328:29
(define SDL-AtomicAdd
   (foreign-library-function "libSDL2_image" "sdl_atomicadd" 
     #:return-type int       #:arg-types ('* int ))


;; definition 1204 from /usr/include/SDL2/SDL_atomic.h:364:34
(define SDL-AtomicCASPtr
   (foreign-library-function "libSDL2_image" "sdl_atomiccasptr" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 1205 from /usr/include/SDL2/SDL_atomic.h:381:31
(define SDL-AtomicSetPtr
   (foreign-library-function "libSDL2_image" "sdl_atomicsetptr" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 1206 from /usr/include/SDL2/SDL_atomic.h:397:31
(define SDL-AtomicGetPtr
   (foreign-library-function "libSDL2_image" "sdl_atomicgetptr" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1207 from /usr/include/SDL2/SDL_error.h:66:29
(define SDL-SetError
   (foreign-library-function "libSDL2_image" "sdl_seterror" 
     #:return-type int       #:arg-types ('* ))




;; definition 1209 from /usr/include/SDL2/SDL_error.h:120:32
(define SDL-GetErrorMsg
   (foreign-library-function "libSDL2_image" "sdl_geterrormsg" 
     #:return-type '*       #:arg-types ('* int ))




;; definition 1213 from /usr/include/SDL2/SDL_error.h:152:29
(define SDL-Error
   (foreign-library-function "libSDL2_image" "sdl_error" 
     #:return-type int       #:arg-types (int ))


;; definition 1214 from /usr/include/SDL2/SDL_endian.h:345:1
(define SDL-SwapFloat
   (foreign-library-function "libSDL2_image" "sdl_swapfloat" 
     #:return-type float       #:arg-types (float ))




;; definition 1218 from /usr/include/SDL2/SDL_mutex.h:173:29
(define SDL-LockMutex
   (foreign-library-function "libSDL2_image" "sdl_lockmutex" 
     #:return-type int       #:arg-types ('* ))


;; definition 1219 from /usr/include/SDL2/SDL_mutex.h:196:29
(define SDL-TryLockMutex
   (foreign-library-function "libSDL2_image" "sdl_trylockmutex" 
     #:return-type int       #:arg-types ('* ))


;; definition 1220 from /usr/include/SDL2/SDL_mutex.h:215:29
(define SDL-UnlockMutex
   (foreign-library-function "libSDL2_image" "sdl_unlockmutex" 
     #:return-type int       #:arg-types ('* ))


;; definition 1221 from /usr/include/SDL2/SDL_mutex.h:236:30
(define SDL-DestroyMutex
   (foreign-library-function "libSDL2_image" "sdl_destroymutex" 
     #:return-type void       #:arg-types ('* ))


;; definition 1225 from /usr/include/SDL2/SDL_mutex.h:291:30
(define SDL-DestroySemaphore
   (foreign-library-function "libSDL2_image" "sdl_destroysemaphore" 
     #:return-type void       #:arg-types ('* ))


;; definition 1226 from /usr/include/SDL2/SDL_mutex.h:318:29
(define SDL-SemWait
   (foreign-library-function "libSDL2_image" "sdl_semwait" 
     #:return-type int       #:arg-types ('* ))


;; definition 1227 from /usr/include/SDL2/SDL_mutex.h:342:29
(define SDL-SemTryWait
   (foreign-library-function "libSDL2_image" "sdl_semtrywait" 
     #:return-type int       #:arg-types ('* ))


;; definition 1229 from /usr/include/SDL2/SDL_mutex.h:385:29
(define SDL-SemPost
   (foreign-library-function "libSDL2_image" "sdl_sempost" 
     #:return-type int       #:arg-types ('* ))




;; definition 1234 from /usr/include/SDL2/SDL_mutex.h:440:30
(define SDL-DestroyCond
   (foreign-library-function "libSDL2_image" "sdl_destroycond" 
     #:return-type void       #:arg-types ('* ))


;; definition 1235 from /usr/include/SDL2/SDL_mutex.h:457:29
(define SDL-CondSignal
   (foreign-library-function "libSDL2_image" "sdl_condsignal" 
     #:return-type int       #:arg-types ('* ))


;; definition 1236 from /usr/include/SDL2/SDL_mutex.h:474:29
(define SDL-CondBroadcast
   (foreign-library-function "libSDL2_image" "sdl_condbroadcast" 
     #:return-type int       #:arg-types ('* ))


;; definition 1237 from /usr/include/SDL2/SDL_mutex.h:502:29
(define SDL-CondWait
   (foreign-library-function "libSDL2_image" "sdl_condwait" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1246 from /usr/include/SDL2/SDL_thread.h:210:1
(define SDL-CreateThread
   (foreign-library-function "libSDL2_image" "sdl_createthread" 
     #:return-type '*       #:arg-types (?fn-ptr? '* '* ))


;; definition 1248 from /usr/include/SDL2/SDL_thread.h:274:37
(define SDL-GetThreadName
   (foreign-library-function "libSDL2_image" "sdl_getthreadname" 
     #:return-type '*       #:arg-types ('* ))


;; definition 1251 from /usr/include/SDL2/SDL_thread.h:324:29
(define SDL-SetThreadPriority
   (foreign-library-function "libSDL2_image" "sdl_setthreadpriority" 
     #:return-type int       #:arg-types (int ))


;; definition 1252 from /usr/include/SDL2/SDL_thread.h:359:30
(define SDL-WaitThread
   (foreign-library-function "libSDL2_image" "sdl_waitthread" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 1253 from /usr/include/SDL2/SDL_thread.h:395:30
(define SDL-DetachThread
   (foreign-library-function "libSDL2_image" "sdl_detachthread" 
     #:return-type void       #:arg-types ('* ))




;; definition 1261 from /usr/include/SDL2/SDL_rwops.h:208:36
(define SDL-RWFromFile
   (foreign-library-function "libSDL2_image" "sdl_rwfromfile" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 1262 from /usr/include/SDL2/SDL_rwops.h:213:36
(define SDL-RWFromFP
   (foreign-library-function "libSDL2_image" "sdl_rwfromfp" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 1263 from /usr/include/SDL2/SDL_rwops.h:282:36
(define SDL-RWFromMem
   (foreign-library-function "libSDL2_image" "sdl_rwfrommem" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 1264 from /usr/include/SDL2/SDL_rwops.h:316:36
(define SDL-RWFromConstMem
   (foreign-library-function "libSDL2_image" "sdl_rwfromconstmem" 
     #:return-type '*       #:arg-types ('* int ))




;; definition 1266 from /usr/include/SDL2/SDL_rwops.h:369:30
(define SDL-FreeRW
   (foreign-library-function "libSDL2_image" "sdl_freerw" 
     #:return-type void       #:arg-types ('* ))


;; definition 1272 from /usr/include/SDL2/SDL_rwops.h:550:29
(define SDL-RWclose
   (foreign-library-function "libSDL2_image" "sdl_rwclose" 
     #:return-type int       #:arg-types ('* ))


;; definition 1273 from /usr/include/SDL2/SDL_rwops.h:568:31
(define SDL-LoadFile-RW
   (foreign-library-function "libSDL2_image" "sdl_loadfile_rw" 
     #:return-type '*       #:arg-types ('* '* int ))


;; definition 1274 from /usr/include/SDL2/SDL_rwops.h:590:31
(define SDL-LoadFile
   (foreign-library-function "libSDL2_image" "sdl_loadfile" 
     #:return-type '*       #:arg-types ('* '* ))




;; definition 1298 from /usr/include/SDL2/SDL_audio.h:295:37
(define SDL-GetAudioDriver
   (foreign-library-function "libSDL2_image" "sdl_getaudiodriver" 
     #:return-type '*       #:arg-types (int ))


;; definition 1299 from /usr/include/SDL2/SDL_audio.h:322:29
(define SDL-AudioInit
   (foreign-library-function "libSDL2_image" "sdl_audioinit" 
     #:return-type int       #:arg-types ('* ))






;; definition 1302 from /usr/include/SDL2/SDL_audio.h:404:29
(define SDL-OpenAudio
   (foreign-library-function "libSDL2_image" "sdl_openaudio" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 1304 from /usr/include/SDL2/SDL_audio.h:462:29
(define SDL-GetNumAudioDevices
   (foreign-library-function "libSDL2_image" "sdl_getnumaudiodevices" 
     #:return-type int       #:arg-types (int ))


;; definition 1305 from /usr/include/SDL2/SDL_audio.h:489:37
(define SDL-GetAudioDeviceName
   (foreign-library-function "libSDL2_image" "sdl_getaudiodevicename" 
     #:return-type '*       #:arg-types (int int ))


;; definition 1306 from /usr/include/SDL2/SDL_audio.h:515:29
(define SDL-GetAudioDeviceSpec
   (foreign-library-function "libSDL2_image" "sdl_getaudiodevicespec" 
     #:return-type int       #:arg-types (int int '* ))


;; definition 1307 from /usr/include/SDL2/SDL_audio.h:550:29
(define SDL-GetDefaultAudioInfo
   (foreign-library-function "libSDL2_image" "sdl_getdefaultaudioinfo" 
     #:return-type int       #:arg-types ('* '* int ))




;; definition 1313 from /usr/include/SDL2/SDL_audio.h:752:30
(define SDL-PauseAudio
   (foreign-library-function "libSDL2_image" "sdl_pauseaudio" 
     #:return-type void       #:arg-types (int ))


;; definition 1315 from /usr/include/SDL2/SDL_audio.h:867:40
(define SDL-LoadWAV-RW
   (foreign-library-function "libSDL2_image" "sdl_loadwav_rw" 
     #:return-type '*       #:arg-types ('* int '* '* '* ))


;; definition 1316 from /usr/include/SDL2/SDL_audio.h:896:30
(define SDL-FreeWAV
   (foreign-library-function "libSDL2_image" "sdl_freewav" 
     #:return-type void       #:arg-types ('* ))


;; definition 1318 from /usr/include/SDL2/SDL_audio.h:977:29
(define SDL-ConvertAudio
   (foreign-library-function "libSDL2_image" "sdl_convertaudio" 
     #:return-type int       #:arg-types ('* ))


;; definition 1322 from /usr/include/SDL2/SDL_audio.h:1034:29
(define SDL-AudioStreamPut
   (foreign-library-function "libSDL2_image" "sdl_audiostreamput" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 1323 from /usr/include/SDL2/SDL_audio.h:1053:29
(define SDL-AudioStreamGet
   (foreign-library-function "libSDL2_image" "sdl_audiostreamget" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 1324 from /usr/include/SDL2/SDL_audio.h:1071:29
(define SDL-AudioStreamAvailable
   (foreign-library-function "libSDL2_image" "sdl_audiostreamavailable" 
     #:return-type int       #:arg-types ('* ))


;; definition 1325 from /usr/include/SDL2/SDL_audio.h:1090:29
(define SDL-AudioStreamFlush
   (foreign-library-function "libSDL2_image" "sdl_audiostreamflush" 
     #:return-type int       #:arg-types ('* ))


;; definition 1326 from /usr/include/SDL2/SDL_audio.h:1104:30
(define SDL-AudioStreamClear
   (foreign-library-function "libSDL2_image" "sdl_audiostreamclear" 
     #:return-type void       #:arg-types ('* ))


;; definition 1327 from /usr/include/SDL2/SDL_audio.h:1118:30
(define SDL-FreeAudioStream
   (foreign-library-function "libSDL2_image" "sdl_freeaudiostream" 
     #:return-type void       #:arg-types ('* ))








;; definition 1340 from /usr/include/SDL2/SDL_clipboard.h:53:29
(define SDL-SetClipboardText
   (foreign-library-function "libSDL2_image" "sdl_setclipboardtext" 
     #:return-type int       #:arg-types ('* ))






;; definition 1343 from /usr/include/SDL2/SDL_clipboard.h:97:29
(define SDL-SetPrimarySelectionText
   (foreign-library-function "libSDL2_image" "sdl_setprimaryselectiontext" 
     #:return-type int       #:arg-types ('* ))






;; definition 1346 from /usr/lib/llvm-18/lib/clang/18/include/hresetintrin.h:40:1
(define -hreset
   (foreign-library-function "libSDL2_image" "_hreset" 
     #:return-type void       #:arg-types (int ))






;; definition 1356 from /usr/lib/llvm-18/lib/clang/18/include/crc32intrin.h:71:1
(define -mm-crc32-u32
   (foreign-library-function "libSDL2_image" "_mm_crc32_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 1358 from /usr/lib/llvm-18/lib/clang/18/include/prfchiintrin.h:32:1
(define -m-prefetchit0
   (foreign-library-function "libSDL2_image" "_m_prefetchit0" 
     #:return-type void       #:arg-types ('* ))


;; definition 1359 from /usr/lib/llvm-18/lib/clang/18/include/prfchiintrin.h:52:1
(define -m-prefetchit1
   (foreign-library-function "libSDL2_image" "_m_prefetchit1" 
     #:return-type void       #:arg-types ('* ))


;; definition 1360 from /usr/lib/llvm-18/lib/clang/18/include/raointintrin.h:38:43
(define -aadd-i32
   (foreign-library-function "libSDL2_image" "_aadd_i32" 
     #:return-type void       #:arg-types ('* int ))


;; definition 1361 from /usr/lib/llvm-18/lib/clang/18/include/raointintrin.h:60:43
(define -aand-i32
   (foreign-library-function "libSDL2_image" "_aand_i32" 
     #:return-type void       #:arg-types ('* int ))


;; definition 1362 from /usr/lib/llvm-18/lib/clang/18/include/raointintrin.h:82:43
(define -aor-i32
   (foreign-library-function "libSDL2_image" "_aor_i32" 
     #:return-type void       #:arg-types ('* int ))


;; definition 1363 from /usr/lib/llvm-18/lib/clang/18/include/raointintrin.h:104:43
(define -axor-i32
   (foreign-library-function "libSDL2_image" "_axor_i32" 
     #:return-type void       #:arg-types ('* int ))




;; definition 1449 from /usr/lib/llvm-18/lib/clang/18/include/mm_malloc.h:55:1
(define -mm-free
   (foreign-library-function "libSDL2_image" "_mm_free" 
     #:return-type void       #:arg-types ('* ))






;; definition 1560 from /usr/lib/llvm-18/lib/clang/18/include/xmmintrin.h:2572:6
(define -mm-setcsr
   (foreign-library-function "libSDL2_image" "_mm_setcsr" 
     #:return-type void       #:arg-types (uint ))


;; definition 1783 from /usr/lib/llvm-18/lib/clang/18/include/emmintrin.h:3986:5
(define -mm-stream-si32
   (foreign-library-function "libSDL2_image" "_mm_stream_si32" 
     #:return-type void       #:arg-types ('* int ))


;; definition 1785 from /usr/lib/llvm-18/lib/clang/18/include/emmintrin.h:4025:6
(define -mm-clflush
   (foreign-library-function "libSDL2_image" "_mm_clflush" 
     #:return-type void       #:arg-types ('* ))








;; definition 1823 from /usr/lib/llvm-18/lib/clang/18/include/pmmintrin.h:272:1
(define -mm-monitor
   (foreign-library-function "libSDL2_image" "_mm_monitor" 
     #:return-type void       #:arg-types ('* uint uint ))


;; definition 1824 from /usr/lib/llvm-18/lib/clang/18/include/pmmintrin.h:294:1
(define -mm-mwait
   (foreign-library-function "libSDL2_image" "_mm_mwait" 
     #:return-type void       #:arg-types (uint uint ))


;; definition 1888 from /usr/lib/llvm-18/lib/clang/18/include/popcntintrin.h:33:1
(define -mm-popcnt-u32
   (foreign-library-function "libSDL2_image" "_mm_popcnt_u32" 
     #:return-type int       #:arg-types (uint ))


;; definition 1895 from /usr/lib/llvm-18/lib/clang/18/include/clflushoptintrin.h:30:1
(define -mm-clflushopt
   (foreign-library-function "libSDL2_image" "_mm_clflushopt" 
     #:return-type void       #:arg-types ('* ))


;; definition 1896 from /usr/lib/llvm-18/lib/clang/18/include/clwbintrin.h:32:1
(define -mm-clwb
   (foreign-library-function "libSDL2_image" "_mm_clwb" 
     #:return-type void       #:arg-types ('* ))






;; definition 2217 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:68:1
(define --tzcnt-u32
   (foreign-library-function "libSDL2_image" "__tzcnt_u32" 
     #:return-type uint       #:arg-types (uint ))


;; definition 2218 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:85:1
(define -mm-tzcnt-32
   (foreign-library-function "libSDL2_image" "_mm_tzcnt_32" 
     #:return-type int       #:arg-types (uint ))


;; definition 2221 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:185:1
(define --andn-u32
   (foreign-library-function "libSDL2_image" "__andn_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 2222 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:228:1
(define --bextr-u32
   (foreign-library-function "libSDL2_image" "__bextr_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 2223 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:253:1
(define -bextr-u32
   (foreign-library-function "libSDL2_image" "_bextr_u32" 
     #:return-type uint       #:arg-types (uint uint uint ))


;; definition 2224 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:276:1
(define -bextr2-u32
   (foreign-library-function "libSDL2_image" "_bextr2_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 2225 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:293:1
(define --blsi-u32
   (foreign-library-function "libSDL2_image" "__blsi_u32" 
     #:return-type uint       #:arg-types (uint ))


;; definition 2226 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:329:1
(define --blsmsk-u32
   (foreign-library-function "libSDL2_image" "__blsmsk_u32" 
     #:return-type uint       #:arg-types (uint ))


;; definition 2227 from /usr/lib/llvm-18/lib/clang/18/include/bmiintrin.h:365:1
(define --blsr-u32
   (foreign-library-function "libSDL2_image" "__blsr_u32" 
     #:return-type uint       #:arg-types (uint ))


;; definition 2235 from /usr/lib/llvm-18/lib/clang/18/include/bmi2intrin.h:41:1
(define -bzhi-u32
   (foreign-library-function "libSDL2_image" "_bzhi_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 2236 from /usr/lib/llvm-18/lib/clang/18/include/bmi2intrin.h:71:1
(define -pdep-u32
   (foreign-library-function "libSDL2_image" "_pdep_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 2237 from /usr/lib/llvm-18/lib/clang/18/include/bmi2intrin.h:101:1
(define -pext-u32
   (foreign-library-function "libSDL2_image" "_pext_u32" 
     #:return-type uint       #:arg-types (uint uint ))


;; definition 2238 from /usr/lib/llvm-18/lib/clang/18/include/bmi2intrin.h:127:1
(define -mulx-u32
   (foreign-library-function "libSDL2_image" "_mulx_u32" 
     #:return-type uint       #:arg-types (uint uint '* ))


;; definition 2243 from /usr/lib/llvm-18/lib/clang/18/include/lzcntintrin.h:46:1
(define --lzcnt32
   (foreign-library-function "libSDL2_image" "__lzcnt32" 
     #:return-type uint       #:arg-types (uint ))


;; definition 2244 from /usr/lib/llvm-18/lib/clang/18/include/lzcntintrin.h:63:1
(define -lzcnt-u32
   (foreign-library-function "libSDL2_image" "_lzcnt_u32" 
     #:return-type uint       #:arg-types (uint ))




;; definition 5841 from /usr/lib/llvm-18/lib/clang/18/include/pkuintrin.h:27:1
(define -wrpkru
   (foreign-library-function "libSDL2_image" "_wrpkru" 
     #:return-type void       #:arg-types (uint ))




;; definition 5903 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:319:1
(define -rdrand16-step
   (foreign-library-function "libSDL2_image" "_rdrand16_step" 
     #:return-type int       #:arg-types ('* ))


;; definition 5904 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:334:1
(define -rdrand32-step
   (foreign-library-function "libSDL2_image" "_rdrand32_step" 
     #:return-type int       #:arg-types ('* ))


;; definition 5905 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:349:1
(define -rdrand64-step
   (foreign-library-function "libSDL2_image" "_rdrand64_step" 
     #:return-type int       #:arg-types ('* ))






;; definition 5910 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:434:1
(define -writefsbase-u32
   (foreign-library-function "libSDL2_image" "_writefsbase_u32" 
     #:return-type void       #:arg-types (uint ))


;; definition 5912 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:462:1
(define -writegsbase-u32
   (foreign-library-function "libSDL2_image" "_writegsbase_u32" 
     #:return-type void       #:arg-types (uint ))


;; definition 5916 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:538:1
(define -loadbe-i32
   (foreign-library-function "libSDL2_image" "_loadbe_i32" 
     #:return-type int       #:arg-types ('* ))


;; definition 5917 from /usr/lib/llvm-18/lib/clang/18/include/immintrin.h:556:1
(define -storebe-i32
   (foreign-library-function "libSDL2_image" "_storebe_i32" 
     #:return-type void       #:arg-types ('* int ))








;; definition 5929 from /usr/lib/llvm-18/lib/clang/18/include/fxsrintrin.h:30:1
(define -fxsave
   (foreign-library-function "libSDL2_image" "_fxsave" 
     #:return-type void       #:arg-types ('* ))


;; definition 5930 from /usr/lib/llvm-18/lib/clang/18/include/fxsrintrin.h:48:1
(define -fxrstor
   (foreign-library-function "libSDL2_image" "_fxrstor" 
     #:return-type void       #:arg-types ('* ))


;; definition 5931 from /usr/lib/llvm-18/lib/clang/18/include/fxsrintrin.h:65:1
(define -fxsave64
   (foreign-library-function "libSDL2_image" "_fxsave64" 
     #:return-type void       #:arg-types ('* ))


;; definition 5932 from /usr/lib/llvm-18/lib/clang/18/include/fxsrintrin.h:83:1
(define -fxrstor64
   (foreign-library-function "libSDL2_image" "_fxrstor64" 
     #:return-type void       #:arg-types ('* ))


;; definition 5945 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:21:43
(define -incsspd
   (foreign-library-function "libSDL2_image" "_incsspd" 
     #:return-type void       #:arg-types (int ))


;; definition 5947 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:32:43
(define -inc-ssp
   (foreign-library-function "libSDL2_image" "_inc_ssp" 
     #:return-type void       #:arg-types (uint ))


;; definition 5948 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:41:51
(define -rdsspd
   (foreign-library-function "libSDL2_image" "_rdsspd" 
     #:return-type uint       #:arg-types (uint ))






;; definition 5954 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:81:43
(define -rstorssp
   (foreign-library-function "libSDL2_image" "_rstorssp" 
     #:return-type void       #:arg-types ('* ))


;; definition 5955 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:85:43
(define -wrssd
   (foreign-library-function "libSDL2_image" "_wrssd" 
     #:return-type void       #:arg-types (uint '* ))


;; definition 5957 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:95:43
(define -wrussd
   (foreign-library-function "libSDL2_image" "_wrussd" 
     #:return-type void       #:arg-types (uint '* ))




;; definition 5960 from /usr/lib/llvm-18/lib/clang/18/include/cetintrin.h:109:43
(define -clrssbsy
   (foreign-library-function "libSDL2_image" "_clrssbsy" 
     #:return-type void       #:arg-types ('* ))


;; definition 5967 from /usr/lib/llvm-18/lib/clang/18/include/rdseedintrin.h:42:1
(define -rdseed16-step
   (foreign-library-function "libSDL2_image" "_rdseed16_step" 
     #:return-type int       #:arg-types ('* ))


;; definition 5968 from /usr/lib/llvm-18/lib/clang/18/include/rdseedintrin.h:69:1
(define -rdseed32-step
   (foreign-library-function "libSDL2_image" "_rdseed32_step" 
     #:return-type int       #:arg-types ('* ))


;; definition 5969 from /usr/lib/llvm-18/lib/clang/18/include/rdseedintrin.h:97:1
(define -rdseed64-step
   (foreign-library-function "libSDL2_image" "_rdseed64_step" 
     #:return-type int       #:arg-types ('* ))




;; definition 5971 from /usr/lib/llvm-18/lib/clang/18/include/cldemoteintrin.h:29:1
(define -cldemote
   (foreign-library-function "libSDL2_image" "_cldemote" 
     #:return-type void       #:arg-types ('* ))


;; definition 5972 from /usr/lib/llvm-18/lib/clang/18/include/waitpkgintrin.h:21:1
(define -umonitor
   (foreign-library-function "libSDL2_image" "_umonitor" 
     #:return-type void       #:arg-types ('* ))


;; definition 5975 from /usr/lib/llvm-18/lib/clang/18/include/movdirintrin.h:19:1
(define -directstoreu-u32
   (foreign-library-function "libSDL2_image" "_directstoreu_u32" 
     #:return-type void       #:arg-types ('* uint ))


;; definition 5976 from /usr/lib/llvm-18/lib/clang/18/include/movdirintrin.h:29:1
(define -directstoreu-u64
   (foreign-library-function "libSDL2_image" "_directstoreu_u64" 
     #:return-type void       #:arg-types ('* ulong ))


;; definition 5977 from /usr/lib/llvm-18/lib/clang/18/include/movdirintrin.h:44:1
(define -movdir64b
   (foreign-library-function "libSDL2_image" "_movdir64b" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 5978 from /usr/lib/llvm-18/lib/clang/18/include/pconfigintrin.h:26:1
(define -pconfig-u32
   (foreign-library-function "libSDL2_image" "_pconfig_u32" 
     #:return-type uint       #:arg-types (uint '* ))


;; definition 5979 from /usr/lib/llvm-18/lib/clang/18/include/sgxintrin.h:24:1
(define -enclu-u32
   (foreign-library-function "libSDL2_image" "_enclu_u32" 
     #:return-type uint       #:arg-types (uint '* ))


;; definition 5980 from /usr/lib/llvm-18/lib/clang/18/include/sgxintrin.h:35:1
(define -encls-u32
   (foreign-library-function "libSDL2_image" "_encls_u32" 
     #:return-type uint       #:arg-types (uint '* ))


;; definition 5981 from /usr/lib/llvm-18/lib/clang/18/include/sgxintrin.h:46:1
(define -enclv-u32
   (foreign-library-function "libSDL2_image" "_enclv_u32" 
     #:return-type uint       #:arg-types (uint '* ))


;; definition 5982 from /usr/lib/llvm-18/lib/clang/18/include/ptwriteintrin.h:22:1
(define -ptwrite32
   (foreign-library-function "libSDL2_image" "_ptwrite32" 
     #:return-type void       #:arg-types (uint ))


;; definition 5984 from /usr/lib/llvm-18/lib/clang/18/include/invpcidintrin.h:19:1
(define -invpcid
   (foreign-library-function "libSDL2_image" "_invpcid" 
     #:return-type void       #:arg-types (uint '* ))


;; definition 5996 from /usr/lib/llvm-18/lib/clang/18/include/amxintrin.h:42:1
(define -tile-loadconfig
   (foreign-library-function "libSDL2_image" "_tile_loadconfig" 
     #:return-type void       #:arg-types ('* ))


;; definition 5997 from /usr/lib/llvm-18/lib/clang/18/include/amxintrin.h:58:1
(define -tile-storeconfig
   (foreign-library-function "libSDL2_image" "_tile_storeconfig" 
     #:return-type void       #:arg-types ('* ))




;; definition 6011 from /usr/lib/llvm-18/lib/clang/18/include/amxintrin.h:326:24
(define --tile-loadd
   (foreign-library-function "libSDL2_image" "__tile_loadd" 
     #:return-type void       #:arg-types ('* '* ulong ))


;; definition 6012 from /usr/lib/llvm-18/lib/clang/18/include/amxintrin.h:347:24
(define --tile-stream-loadd
   (foreign-library-function "libSDL2_image" "__tile_stream_loadd" 
     #:return-type void       #:arg-types ('* '* ulong ))


;; definition 6018 from /usr/lib/llvm-18/lib/clang/18/include/amxintrin.h:470:24
(define --tile-zero
   (foreign-library-function "libSDL2_image" "__tile_zero" 
     #:return-type void       #:arg-types ('* ))


;; definition 6031 from /usr/lib/llvm-18/lib/clang/18/include/enqcmdintrin.h:36:1
(define -enqcmd
   (foreign-library-function "libSDL2_image" "_enqcmd" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6032 from /usr/lib/llvm-18/lib/clang/18/include/enqcmdintrin.h:56:1
(define -enqcmds
   (foreign-library-function "libSDL2_image" "_enqcmds" 
     #:return-type int       #:arg-types ('* '* ))














































;; definition 6058 from /usr/include/SDL2/SDL_cpuinfo.h:592:30
(define SDL-SIMDFree
   (foreign-library-function "libSDL2_image" "sdl_simdfree" 
     #:return-type void       #:arg-types ('* ))


;; definition 6081 from /usr/include/SDL2/SDL_pixels.h:477:30
(define SDL-FreeFormat
   (foreign-library-function "libSDL2_image" "sdl_freeformat" 
     #:return-type void       #:arg-types ('* ))


;; definition 6082 from /usr/include/SDL2/SDL_pixels.h:493:38
(define SDL-AllocPalette
   (foreign-library-function "libSDL2_image" "sdl_allocpalette" 
     #:return-type '*       #:arg-types (int ))


;; definition 6083 from /usr/include/SDL2/SDL_pixels.h:508:29
(define SDL-SetPixelFormatPalette
   (foreign-library-function "libSDL2_image" "sdl_setpixelformatpalette" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6084 from /usr/include/SDL2/SDL_pixels.h:526:29
(define SDL-SetPaletteColors
   (foreign-library-function "libSDL2_image" "sdl_setpalettecolors" 
     #:return-type int       #:arg-types ('* '* int int ))


;; definition 6085 from /usr/include/SDL2/SDL_pixels.h:539:30
(define SDL-FreePalette
   (foreign-library-function "libSDL2_image" "sdl_freepalette" 
     #:return-type void       #:arg-types ('* ))


;; definition 6090 from /usr/include/SDL2/SDL_pixels.h:675:30
(define SDL-CalculateGammaRamp
   (foreign-library-function "libSDL2_image" "sdl_calculategammaramp" 
     #:return-type void       #:arg-types (float '* ))


;; definition 6099 from /usr/include/SDL2/SDL_rect.h:110:27
(define SDL-PointInRect
   (foreign-library-function "libSDL2_image" "sdl_pointinrect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6100 from /usr/include/SDL2/SDL_rect.h:119:27
(define SDL-RectEmpty
   (foreign-library-function "libSDL2_image" "sdl_rectempty" 
     #:return-type int       #:arg-types ('* ))


;; definition 6101 from /usr/include/SDL2/SDL_rect.h:127:27
(define SDL-RectEquals
   (foreign-library-function "libSDL2_image" "sdl_rectequals" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6102 from /usr/include/SDL2/SDL_rect.h:146:34
(define SDL-HasIntersection
   (foreign-library-function "libSDL2_image" "sdl_hasintersection" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6103 from /usr/include/SDL2/SDL_rect.h:164:34
(define SDL-IntersectRect
   (foreign-library-function "libSDL2_image" "sdl_intersectrect" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 6104 from /usr/include/SDL2/SDL_rect.h:178:30
(define SDL-UnionRect
   (foreign-library-function "libSDL2_image" "sdl_unionrect" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6105 from /usr/include/SDL2/SDL_rect.h:199:34
(define SDL-EnclosePoints
   (foreign-library-function "libSDL2_image" "sdl_enclosepoints" 
     #:return-type int       #:arg-types ('* int '* '* ))


;; definition 6106 from /usr/include/SDL2/SDL_rect.h:222:34
(define SDL-IntersectRectAndLine
   (foreign-library-function "libSDL2_image" "sdl_intersectrectandline" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))


;; definition 6107 from /usr/include/SDL2/SDL_rect.h:233:27
(define SDL-PointInFRect
   (foreign-library-function "libSDL2_image" "sdl_pointinfrect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6108 from /usr/include/SDL2/SDL_rect.h:242:27
(define SDL-FRectEmpty
   (foreign-library-function "libSDL2_image" "sdl_frectempty" 
     #:return-type int       #:arg-types ('* ))


;; definition 6109 from /usr/include/SDL2/SDL_rect.h:252:27
(define SDL-FRectEqualsEpsilon
   (foreign-library-function "libSDL2_image" "sdl_frectequalsepsilon" 
     #:return-type int       #:arg-types ('* '* float ))


;; definition 6110 from /usr/include/SDL2/SDL_rect.h:267:27
(define SDL-FRectEquals
   (foreign-library-function "libSDL2_image" "sdl_frectequals" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6111 from /usr/include/SDL2/SDL_rect.h:285:34
(define SDL-HasIntersectionF
   (foreign-library-function "libSDL2_image" "sdl_hasintersectionf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6112 from /usr/include/SDL2/SDL_rect.h:303:34
(define SDL-IntersectFRect
   (foreign-library-function "libSDL2_image" "sdl_intersectfrect" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 6113 from /usr/include/SDL2/SDL_rect.h:317:30
(define SDL-UnionFRect
   (foreign-library-function "libSDL2_image" "sdl_unionfrect" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6114 from /usr/include/SDL2/SDL_rect.h:339:34
(define SDL-EncloseFPoints
   (foreign-library-function "libSDL2_image" "sdl_enclosefpoints" 
     #:return-type int       #:arg-types ('* int '* '* ))


;; definition 6115 from /usr/include/SDL2/SDL_rect.h:363:34
(define SDL-IntersectFRectAndLine
   (foreign-library-function "libSDL2_image" "sdl_intersectfrectandline" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))


;; definition 6122 from /usr/include/SDL2/SDL_blendmode.h:184:39
(define SDL-ComposeCustomBlendMode
   (foreign-library-function "libSDL2_image" "sdl_composecustomblendmode" 
     #:return-type int       #:arg-types (int int int int int int ))


;; definition 6134 from /usr/include/SDL2/SDL_surface.h:275:30
(define SDL-FreeSurface
   (foreign-library-function "libSDL2_image" "sdl_freesurface" 
     #:return-type void       #:arg-types ('* ))


;; definition 6135 from /usr/include/SDL2/SDL_surface.h:289:29
(define SDL-SetSurfacePalette
   (foreign-library-function "libSDL2_image" "sdl_setsurfacepalette" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6136 from /usr/include/SDL2/SDL_surface.h:313:29
(define SDL-LockSurface
   (foreign-library-function "libSDL2_image" "sdl_locksurface" 
     #:return-type int       #:arg-types ('* ))


;; definition 6137 from /usr/include/SDL2/SDL_surface.h:324:30
(define SDL-UnlockSurface
   (foreign-library-function "libSDL2_image" "sdl_unlocksurface" 
     #:return-type void       #:arg-types ('* ))


;; definition 6138 from /usr/include/SDL2/SDL_surface.h:348:38
(define SDL-LoadBMP-RW
   (foreign-library-function "libSDL2_image" "sdl_loadbmp_rw" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 6139 from /usr/include/SDL2/SDL_surface.h:378:29
(define SDL-SaveBMP-RW
   (foreign-library-function "libSDL2_image" "sdl_savebmp_rw" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6140 from /usr/include/SDL2/SDL_surface.h:406:29
(define SDL-SetSurfaceRLE
   (foreign-library-function "libSDL2_image" "sdl_setsurfacerle" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6141 from /usr/include/SDL2/SDL_surface.h:421:34
(define SDL-HasSurfaceRLE
   (foreign-library-function "libSDL2_image" "sdl_hassurfacerle" 
     #:return-type int       #:arg-types ('* ))


;; definition 6143 from /usr/include/SDL2/SDL_surface.h:463:34
(define SDL-HasColorKey
   (foreign-library-function "libSDL2_image" "sdl_hascolorkey" 
     #:return-type int       #:arg-types ('* ))


;; definition 6144 from /usr/include/SDL2/SDL_surface.h:483:29
(define SDL-GetColorKey
   (foreign-library-function "libSDL2_image" "sdl_getcolorkey" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6146 from /usr/include/SDL2/SDL_surface.h:526:29
(define SDL-GetSurfaceColorMod
   (foreign-library-function "libSDL2_image" "sdl_getsurfacecolormod" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6148 from /usr/include/SDL2/SDL_surface.h:564:29
(define SDL-GetSurfaceAlphaMod
   (foreign-library-function "libSDL2_image" "sdl_getsurfacealphamod" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6149 from /usr/include/SDL2/SDL_surface.h:583:29
(define SDL-SetSurfaceBlendMode
   (foreign-library-function "libSDL2_image" "sdl_setsurfaceblendmode" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6150 from /usr/include/SDL2/SDL_surface.h:598:29
(define SDL-GetSurfaceBlendMode
   (foreign-library-function "libSDL2_image" "sdl_getsurfaceblendmode" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6151 from /usr/include/SDL2/SDL_surface.h:621:34
(define SDL-SetClipRect
   (foreign-library-function "libSDL2_image" "sdl_setcliprect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6152 from /usr/include/SDL2/SDL_surface.h:640:30
(define SDL-GetClipRect
   (foreign-library-function "libSDL2_image" "sdl_getcliprect" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 6153 from /usr/include/SDL2/SDL_surface.h:652:38
(define SDL-DuplicateSurface
   (foreign-library-function "libSDL2_image" "sdl_duplicatesurface" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6160 from /usr/include/SDL2/SDL_surface.h:876:29
(define SDL-UpperBlit
   (foreign-library-function "libSDL2_image" "sdl_upperblit" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6161 from /usr/include/SDL2/SDL_surface.h:902:29
(define SDL-LowerBlit
   (foreign-library-function "libSDL2_image" "sdl_lowerblit" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6162 from /usr/include/SDL2/SDL_surface.h:915:29
(define SDL-SoftStretch
   (foreign-library-function "libSDL2_image" "sdl_softstretch" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6163 from /usr/include/SDL2/SDL_surface.h:925:29
(define SDL-SoftStretchLinear
   (foreign-library-function "libSDL2_image" "sdl_softstretchlinear" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6164 from /usr/include/SDL2/SDL_surface.h:941:29
(define SDL-UpperBlitScaled
   (foreign-library-function "libSDL2_image" "sdl_upperblitscaled" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6165 from /usr/include/SDL2/SDL_surface.h:967:29
(define SDL-LowerBlitScaled
   (foreign-library-function "libSDL2_image" "sdl_lowerblitscaled" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6166 from /usr/include/SDL2/SDL_surface.h:976:30
(define SDL-SetYUVConversionMode
   (foreign-library-function "libSDL2_image" "sdl_setyuvconversionmode" 
     #:return-type void       #:arg-types (int ))




;; definition 6168 from /usr/include/SDL2/SDL_surface.h:991:49
(define SDL-GetYUVConversionModeForResolution
   (foreign-library-function "libSDL2_image" "sdl_getyuvconversionmodeforresolution" 
     #:return-type int       #:arg-types (int int ))




;; definition 6195 from /usr/include/SDL2/SDL_video.h:342:37
(define SDL-GetVideoDriver
   (foreign-library-function "libSDL2_image" "sdl_getvideodriver" 
     #:return-type '*       #:arg-types (int ))


;; definition 6196 from /usr/include/SDL2/SDL_video.h:373:29
(define SDL-VideoInit
   (foreign-library-function "libSDL2_image" "sdl_videoinit" 
     #:return-type int       #:arg-types ('* ))








;; definition 6200 from /usr/include/SDL2/SDL_video.h:423:38
(define SDL-GetDisplayName
   (foreign-library-function "libSDL2_image" "sdl_getdisplayname" 
     #:return-type '*       #:arg-types (int ))


;; definition 6201 from /usr/include/SDL2/SDL_video.h:439:29
(define SDL-GetDisplayBounds
   (foreign-library-function "libSDL2_image" "sdl_getdisplaybounds" 
     #:return-type int       #:arg-types (int '* ))


;; definition 6202 from /usr/include/SDL2/SDL_video.h:470:29
(define SDL-GetDisplayUsableBounds
   (foreign-library-function "libSDL2_image" "sdl_getdisplayusablebounds" 
     #:return-type int       #:arg-types (int '* ))


;; definition 6203 from /usr/include/SDL2/SDL_video.h:505:29
(define SDL-GetDisplayDPI
   (foreign-library-function "libSDL2_image" "sdl_getdisplaydpi" 
     #:return-type int       #:arg-types (int '* '* '* ))


;; definition 6204 from /usr/include/SDL2/SDL_video.h:518:48
(define SDL-GetDisplayOrientation
   (foreign-library-function "libSDL2_image" "sdl_getdisplayorientation" 
     #:return-type int       #:arg-types (int ))


;; definition 6205 from /usr/include/SDL2/SDL_video.h:535:29
(define SDL-GetNumDisplayModes
   (foreign-library-function "libSDL2_image" "sdl_getnumdisplaymodes" 
     #:return-type int       #:arg-types (int ))


;; definition 6206 from /usr/include/SDL2/SDL_video.h:559:29
(define SDL-GetDisplayMode
   (foreign-library-function "libSDL2_image" "sdl_getdisplaymode" 
     #:return-type int       #:arg-types (int int '* ))


;; definition 6207 from /usr/include/SDL2/SDL_video.h:582:29
(define SDL-GetDesktopDisplayMode
   (foreign-library-function "libSDL2_image" "sdl_getdesktopdisplaymode" 
     #:return-type int       #:arg-types (int '* ))


;; definition 6208 from /usr/include/SDL2/SDL_video.h:605:29
(define SDL-GetCurrentDisplayMode
   (foreign-library-function "libSDL2_image" "sdl_getcurrentdisplaymode" 
     #:return-type int       #:arg-types (int '* ))


;; definition 6209 from /usr/include/SDL2/SDL_video.h:631:43
(define SDL-GetClosestDisplayMode
   (foreign-library-function "libSDL2_image" "sdl_getclosestdisplaymode" 
     #:return-type '*       #:arg-types (int '* '* ))


;; definition 6210 from /usr/include/SDL2/SDL_video.h:645:29
(define SDL-GetPointDisplayIndex
   (foreign-library-function "libSDL2_image" "sdl_getpointdisplayindex" 
     #:return-type int       #:arg-types ('* ))


;; definition 6211 from /usr/include/SDL2/SDL_video.h:660:29
(define SDL-GetRectDisplayIndex
   (foreign-library-function "libSDL2_image" "sdl_getrectdisplayindex" 
     #:return-type int       #:arg-types ('* ))


;; definition 6212 from /usr/include/SDL2/SDL_video.h:675:29
(define SDL-GetWindowDisplayIndex
   (foreign-library-function "libSDL2_image" "sdl_getwindowdisplayindex" 
     #:return-type int       #:arg-types ('* ))


;; definition 6213 from /usr/include/SDL2/SDL_video.h:696:29
(define SDL-SetWindowDisplayMode
   (foreign-library-function "libSDL2_image" "sdl_setwindowdisplaymode" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6214 from /usr/include/SDL2/SDL_video.h:713:29
(define SDL-GetWindowDisplayMode
   (foreign-library-function "libSDL2_image" "sdl_getwindowdisplaymode" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6215 from /usr/include/SDL2/SDL_video.h:728:31
(define SDL-GetWindowICCProfile
   (foreign-library-function "libSDL2_image" "sdl_getwindowiccprofile" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 6218 from /usr/include/SDL2/SDL_video.h:834:38
(define SDL-CreateWindowFrom
   (foreign-library-function "libSDL2_image" "sdl_createwindowfrom" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6222 from /usr/include/SDL2/SDL_video.h:898:30
(define SDL-SetWindowTitle
   (foreign-library-function "libSDL2_image" "sdl_setwindowtitle" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 6223 from /usr/include/SDL2/SDL_video.h:912:37
(define SDL-GetWindowTitle
   (foreign-library-function "libSDL2_image" "sdl_getwindowtitle" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6224 from /usr/include/SDL2/SDL_video.h:922:30
(define SDL-SetWindowIcon
   (foreign-library-function "libSDL2_image" "sdl_setwindowicon" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 6225 from /usr/include/SDL2/SDL_video.h:939:31
(define SDL-SetWindowData
   (foreign-library-function "libSDL2_image" "sdl_setwindowdata" 
     #:return-type '*       #:arg-types ('* '* '* ))


;; definition 6226 from /usr/include/SDL2/SDL_video.h:954:31
(define SDL-GetWindowData
   (foreign-library-function "libSDL2_image" "sdl_getwindowdata" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 6227 from /usr/include/SDL2/SDL_video.h:972:30
(define SDL-SetWindowPosition
   (foreign-library-function "libSDL2_image" "sdl_setwindowposition" 
     #:return-type void       #:arg-types ('* int int ))


;; definition 6228 from /usr/include/SDL2/SDL_video.h:991:30
(define SDL-GetWindowPosition
   (foreign-library-function "libSDL2_image" "sdl_getwindowposition" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6229 from /usr/include/SDL2/SDL_video.h:1016:30
(define SDL-SetWindowSize
   (foreign-library-function "libSDL2_image" "sdl_setwindowsize" 
     #:return-type void       #:arg-types ('* int int ))


;; definition 6230 from /usr/include/SDL2/SDL_video.h:1043:30
(define SDL-GetWindowSize
   (foreign-library-function "libSDL2_image" "sdl_getwindowsize" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6231 from /usr/include/SDL2/SDL_video.h:1078:29
(define SDL-GetWindowBordersSize
   (foreign-library-function "libSDL2_image" "sdl_getwindowborderssize" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))


;; definition 6232 from /usr/include/SDL2/SDL_video.h:1101:30
(define SDL-GetWindowSizeInPixels
   (foreign-library-function "libSDL2_image" "sdl_getwindowsizeinpixels" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6233 from /usr/include/SDL2/SDL_video.h:1116:30
(define SDL-SetWindowMinimumSize
   (foreign-library-function "libSDL2_image" "sdl_setwindowminimumsize" 
     #:return-type void       #:arg-types ('* int int ))


;; definition 6234 from /usr/include/SDL2/SDL_video.h:1133:30
(define SDL-GetWindowMinimumSize
   (foreign-library-function "libSDL2_image" "sdl_getwindowminimumsize" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6235 from /usr/include/SDL2/SDL_video.h:1148:30
(define SDL-SetWindowMaximumSize
   (foreign-library-function "libSDL2_image" "sdl_setwindowmaximumsize" 
     #:return-type void       #:arg-types ('* int int ))


;; definition 6236 from /usr/include/SDL2/SDL_video.h:1165:30
(define SDL-GetWindowMaximumSize
   (foreign-library-function "libSDL2_image" "sdl_getwindowmaximumsize" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6237 from /usr/include/SDL2/SDL_video.h:1184:30
(define SDL-SetWindowBordered
   (foreign-library-function "libSDL2_image" "sdl_setwindowbordered" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6238 from /usr/include/SDL2/SDL_video.h:1203:30
(define SDL-SetWindowResizable
   (foreign-library-function "libSDL2_image" "sdl_setwindowresizable" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6239 from /usr/include/SDL2/SDL_video.h:1220:30
(define SDL-SetWindowAlwaysOnTop
   (foreign-library-function "libSDL2_image" "sdl_setwindowalwaysontop" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6240 from /usr/include/SDL2/SDL_video.h:1233:30
(define SDL-ShowWindow
   (foreign-library-function "libSDL2_image" "sdl_showwindow" 
     #:return-type void       #:arg-types ('* ))


;; definition 6241 from /usr/include/SDL2/SDL_video.h:1244:30
(define SDL-HideWindow
   (foreign-library-function "libSDL2_image" "sdl_hidewindow" 
     #:return-type void       #:arg-types ('* ))


;; definition 6242 from /usr/include/SDL2/SDL_video.h:1253:30
(define SDL-RaiseWindow
   (foreign-library-function "libSDL2_image" "sdl_raisewindow" 
     #:return-type void       #:arg-types ('* ))


;; definition 6243 from /usr/include/SDL2/SDL_video.h:1265:30
(define SDL-MaximizeWindow
   (foreign-library-function "libSDL2_image" "sdl_maximizewindow" 
     #:return-type void       #:arg-types ('* ))


;; definition 6244 from /usr/include/SDL2/SDL_video.h:1277:30
(define SDL-MinimizeWindow
   (foreign-library-function "libSDL2_image" "sdl_minimizewindow" 
     #:return-type void       #:arg-types ('* ))


;; definition 6245 from /usr/include/SDL2/SDL_video.h:1289:30
(define SDL-RestoreWindow
   (foreign-library-function "libSDL2_image" "sdl_restorewindow" 
     #:return-type void       #:arg-types ('* ))


;; definition 6247 from /usr/include/SDL2/SDL_video.h:1325:34
(define SDL-HasWindowSurface
   (foreign-library-function "libSDL2_image" "sdl_haswindowsurface" 
     #:return-type int       #:arg-types ('* ))


;; definition 6248 from /usr/include/SDL2/SDL_video.h:1356:39
(define SDL-GetWindowSurface
   (foreign-library-function "libSDL2_image" "sdl_getwindowsurface" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6249 from /usr/include/SDL2/SDL_video.h:1375:29
(define SDL-UpdateWindowSurface
   (foreign-library-function "libSDL2_image" "sdl_updatewindowsurface" 
     #:return-type int       #:arg-types ('* ))


;; definition 6250 from /usr/include/SDL2/SDL_video.h:1402:29
(define SDL-UpdateWindowSurfaceRects
   (foreign-library-function "libSDL2_image" "sdl_updatewindowsurfacerects" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6251 from /usr/include/SDL2/SDL_video.h:1418:29
(define SDL-DestroyWindowSurface
   (foreign-library-function "libSDL2_image" "sdl_destroywindowsurface" 
     #:return-type int       #:arg-types ('* ))


;; definition 6252 from /usr/include/SDL2/SDL_video.h:1438:30
(define SDL-SetWindowGrab
   (foreign-library-function "libSDL2_image" "sdl_setwindowgrab" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6253 from /usr/include/SDL2/SDL_video.h:1469:30
(define SDL-SetWindowKeyboardGrab
   (foreign-library-function "libSDL2_image" "sdl_setwindowkeyboardgrab" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6254 from /usr/include/SDL2/SDL_video.h:1486:30
(define SDL-SetWindowMouseGrab
   (foreign-library-function "libSDL2_image" "sdl_setwindowmousegrab" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6255 from /usr/include/SDL2/SDL_video.h:1499:34
(define SDL-GetWindowGrab
   (foreign-library-function "libSDL2_image" "sdl_getwindowgrab" 
     #:return-type int       #:arg-types ('* ))


;; definition 6256 from /usr/include/SDL2/SDL_video.h:1512:34
(define SDL-GetWindowKeyboardGrab
   (foreign-library-function "libSDL2_image" "sdl_getwindowkeyboardgrab" 
     #:return-type int       #:arg-types ('* ))


;; definition 6257 from /usr/include/SDL2/SDL_video.h:1525:34
(define SDL-GetWindowMouseGrab
   (foreign-library-function "libSDL2_image" "sdl_getwindowmousegrab" 
     #:return-type int       #:arg-types ('* ))




;; definition 6259 from /usr/include/SDL2/SDL_video.h:1556:29
(define SDL-SetWindowMouseRect
   (foreign-library-function "libSDL2_image" "sdl_setwindowmouserect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6260 from /usr/include/SDL2/SDL_video.h:1569:42
(define SDL-GetWindowMouseRect
   (foreign-library-function "libSDL2_image" "sdl_getwindowmouserect" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6261 from /usr/include/SDL2/SDL_video.h:1597:29
(define SDL-SetWindowBrightness
   (foreign-library-function "libSDL2_image" "sdl_setwindowbrightness" 
     #:return-type int       #:arg-types ('* float ))


;; definition 6262 from /usr/include/SDL2/SDL_video.h:1616:31
(define SDL-GetWindowBrightness
   (foreign-library-function "libSDL2_image" "sdl_getwindowbrightness" 
     #:return-type float       #:arg-types ('* ))


;; definition 6263 from /usr/include/SDL2/SDL_video.h:1635:29
(define SDL-SetWindowOpacity
   (foreign-library-function "libSDL2_image" "sdl_setwindowopacity" 
     #:return-type int       #:arg-types ('* float ))


;; definition 6264 from /usr/include/SDL2/SDL_video.h:1656:29
(define SDL-GetWindowOpacity
   (foreign-library-function "libSDL2_image" "sdl_getwindowopacity" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6265 from /usr/include/SDL2/SDL_video.h:1668:29
(define SDL-SetWindowModalFor
   (foreign-library-function "libSDL2_image" "sdl_setwindowmodalfor" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6266 from /usr/include/SDL2/SDL_video.h:1685:29
(define SDL-SetWindowInputFocus
   (foreign-library-function "libSDL2_image" "sdl_setwindowinputfocus" 
     #:return-type int       #:arg-types ('* ))


;; definition 6267 from /usr/include/SDL2/SDL_video.h:1717:29
(define SDL-SetWindowGammaRamp
   (foreign-library-function "libSDL2_image" "sdl_setwindowgammaramp" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6268 from /usr/include/SDL2/SDL_video.h:1745:29
(define SDL-GetWindowGammaRamp
   (foreign-library-function "libSDL2_image" "sdl_getwindowgammaramp" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6272 from /usr/include/SDL2/SDL_video.h:1823:29
(define SDL-SetWindowHitTest
   (foreign-library-function "libSDL2_image" "sdl_setwindowhittest" 
     #:return-type int       #:arg-types ('* ?fn-ptr? '* ))


;; definition 6273 from /usr/include/SDL2/SDL_video.h:1837:29
(define SDL-FlashWindow
   (foreign-library-function "libSDL2_image" "sdl_flashwindow" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6274 from /usr/include/SDL2/SDL_video.h:1852:30
(define SDL-DestroyWindow
   (foreign-library-function "libSDL2_image" "sdl_destroywindow" 
     #:return-type void       #:arg-types ('* ))








;; definition 6278 from /usr/include/SDL2/SDL_video.h:1925:29
(define SDL-GL-LoadLibrary
   (foreign-library-function "libSDL2_image" "sdl_gl_loadlibrary" 
     #:return-type int       #:arg-types ('* ))


;; definition 6279 from /usr/include/SDL2/SDL_video.h:1978:31
(define SDL-GL-GetProcAddress
   (foreign-library-function "libSDL2_image" "sdl_gl_getprocaddress" 
     #:return-type '*       #:arg-types ('* ))




;; definition 6281 from /usr/include/SDL2/SDL_video.h:2008:34
(define SDL-GL-ExtensionSupported
   (foreign-library-function "libSDL2_image" "sdl_gl_extensionsupported" 
     #:return-type int       #:arg-types ('* ))




;; definition 6283 from /usr/include/SDL2/SDL_video.h:2040:29
(define SDL-GL-SetAttribute
   (foreign-library-function "libSDL2_image" "sdl_gl_setattribute" 
     #:return-type int       #:arg-types (int int ))


;; definition 6284 from /usr/include/SDL2/SDL_video.h:2056:29
(define SDL-GL-GetAttribute
   (foreign-library-function "libSDL2_image" "sdl_gl_getattribute" 
     #:return-type int       #:arg-types (int '* ))




;; definition 6289 from /usr/include/SDL2/SDL_video.h:2141:30
(define SDL-GL-GetDrawableSize
   (foreign-library-function "libSDL2_image" "sdl_gl_getdrawablesize" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6290 from /usr/include/SDL2/SDL_video.h:2171:29
(define SDL-GL-SetSwapInterval
   (foreign-library-function "libSDL2_image" "sdl_gl_setswapinterval" 
     #:return-type int       #:arg-types (int ))




;; definition 6292 from /usr/include/SDL2/SDL_video.h:2204:30
(define SDL-GL-SwapWindow
   (foreign-library-function "libSDL2_image" "sdl_gl_swapwindow" 
     #:return-type void       #:arg-types ('* ))




;; definition 6304 from /usr/include/SDL2/SDL_keyboard.h:96:38
(define SDL-GetKeyboardState
   (foreign-library-function "libSDL2_image" "sdl_getkeyboardstate" 
     #:return-type '*       #:arg-types ('* ))






;; definition 6307 from /usr/include/SDL2/SDL_keyboard.h:139:30
(define SDL-SetModState
   (foreign-library-function "libSDL2_image" "sdl_setmodstate" 
     #:return-type void       #:arg-types (int ))


;; definition 6310 from /usr/include/SDL2/SDL_keyboard.h:196:37
(define SDL-GetScancodeName
   (foreign-library-function "libSDL2_image" "sdl_getscancodename" 
     #:return-type '*       #:arg-types (int ))


;; definition 6311 from /usr/include/SDL2/SDL_keyboard.h:211:38
(define SDL-GetScancodeFromName
   (foreign-library-function "libSDL2_image" "sdl_getscancodefromname" 
     #:return-type int       #:arg-types ('* ))












;; definition 6319 from /usr/include/SDL2/SDL_keyboard.h:326:30
(define SDL-SetTextInputRect
   (foreign-library-function "libSDL2_image" "sdl_settextinputrect" 
     #:return-type void       #:arg-types ('* ))




;; definition 6321 from /usr/include/SDL2/SDL_keyboard.h:351:34
(define SDL-IsScreenKeyboardShown
   (foreign-library-function "libSDL2_image" "sdl_isscreenkeyboardshown" 
     #:return-type int       #:arg-types ('* ))




;; definition 6332 from /usr/include/SDL2/SDL_mouse.h:173:30
(define SDL-WarpMouseInWindow
   (foreign-library-function "libSDL2_image" "sdl_warpmouseinwindow" 
     #:return-type void       #:arg-types ('* int int ))


;; definition 6333 from /usr/include/SDL2/SDL_mouse.h:196:29
(define SDL-WarpMouseGlobal
   (foreign-library-function "libSDL2_image" "sdl_warpmouseglobal" 
     #:return-type int       #:arg-types (int int ))


;; definition 6334 from /usr/include/SDL2/SDL_mouse.h:217:29
(define SDL-SetRelativeMouseMode
   (foreign-library-function "libSDL2_image" "sdl_setrelativemousemode" 
     #:return-type int       #:arg-types (int ))


;; definition 6335 from /usr/include/SDL2/SDL_mouse.h:263:29
(define SDL-CaptureMouse
   (foreign-library-function "libSDL2_image" "sdl_capturemouse" 
     #:return-type int       #:arg-types (int ))




;; definition 6337 from /usr/include/SDL2/SDL_mouse.h:317:37
(define SDL-CreateCursor
   (foreign-library-function "libSDL2_image" "sdl_createcursor" 
     #:return-type '*       #:arg-types ('* '* int int int int ))


;; definition 6338 from /usr/include/SDL2/SDL_mouse.h:336:37
(define SDL-CreateColorCursor
   (foreign-library-function "libSDL2_image" "sdl_createcolorcursor" 
     #:return-type '*       #:arg-types ('* int int ))


;; definition 6339 from /usr/include/SDL2/SDL_mouse.h:351:37
(define SDL-CreateSystemCursor
   (foreign-library-function "libSDL2_image" "sdl_createsystemcursor" 
     #:return-type '*       #:arg-types (int ))


;; definition 6340 from /usr/include/SDL2/SDL_mouse.h:369:30
(define SDL-SetCursor
   (foreign-library-function "libSDL2_image" "sdl_setcursor" 
     #:return-type void       #:arg-types ('* ))






;; definition 6343 from /usr/include/SDL2/SDL_mouse.h:413:30
(define SDL-FreeCursor
   (foreign-library-function "libSDL2_image" "sdl_freecursor" 
     #:return-type void       #:arg-types ('* ))


;; definition 6344 from /usr/include/SDL2/SDL_mouse.h:435:29
(define SDL-ShowCursor
   (foreign-library-function "libSDL2_image" "sdl_showcursor" 
     #:return-type int       #:arg-types (int ))








;; definition 6360 from /usr/include/SDL2/SDL_joystick.h:194:37
(define SDL-JoystickNameForIndex
   (foreign-library-function "libSDL2_image" "sdl_joysticknameforindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6361 from /usr/include/SDL2/SDL_joystick.h:211:37
(define SDL-JoystickPathForIndex
   (foreign-library-function "libSDL2_image" "sdl_joystickpathforindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6362 from /usr/include/SDL2/SDL_joystick.h:219:29
(define SDL-JoystickGetDevicePlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_joystickgetdeviceplayerindex" 
     #:return-type int       #:arg-types (int ))


;; definition 6367 from /usr/include/SDL2/SDL_joystick.h:296:42
(define SDL-JoystickGetDeviceType
   (foreign-library-function "libSDL2_image" "sdl_joystickgetdevicetype" 
     #:return-type int       #:arg-types (int ))


;; definition 6369 from /usr/include/SDL2/SDL_joystick.h:332:39
(define SDL-JoystickOpen
   (foreign-library-function "libSDL2_image" "sdl_joystickopen" 
     #:return-type '*       #:arg-types (int ))


;; definition 6371 from /usr/include/SDL2/SDL_joystick.h:354:39
(define SDL-JoystickFromPlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_joystickfromplayerindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6372 from /usr/include/SDL2/SDL_joystick.h:363:29
(define SDL-JoystickAttachVirtual
   (foreign-library-function "libSDL2_image" "sdl_joystickattachvirtual" 
     #:return-type int       #:arg-types (int int int int ))


;; definition 6375 from /usr/include/SDL2/SDL_joystick.h:416:29
(define SDL-JoystickAttachVirtualEx
   (foreign-library-function "libSDL2_image" "sdl_joystickattachvirtualex" 
     #:return-type int       #:arg-types ('* ))


;; definition 6376 from /usr/include/SDL2/SDL_joystick.h:427:29
(define SDL-JoystickDetachVirtual
   (foreign-library-function "libSDL2_image" "sdl_joystickdetachvirtual" 
     #:return-type int       #:arg-types (int ))


;; definition 6377 from /usr/include/SDL2/SDL_joystick.h:437:34
(define SDL-JoystickIsVirtual
   (foreign-library-function "libSDL2_image" "sdl_joystickisvirtual" 
     #:return-type int       #:arg-types (int ))


;; definition 6381 from /usr/include/SDL2/SDL_joystick.h:509:37
(define SDL-JoystickName
   (foreign-library-function "libSDL2_image" "sdl_joystickname" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6382 from /usr/include/SDL2/SDL_joystick.h:522:37
(define SDL-JoystickPath
   (foreign-library-function "libSDL2_image" "sdl_joystickpath" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6383 from /usr/include/SDL2/SDL_joystick.h:535:29
(define SDL-JoystickGetPlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_joystickgetplayerindex" 
     #:return-type int       #:arg-types ('* ))


;; definition 6384 from /usr/include/SDL2/SDL_joystick.h:546:30
(define SDL-JoystickSetPlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_joysticksetplayerindex" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6390 from /usr/include/SDL2/SDL_joystick.h:625:38
(define SDL-JoystickGetSerial
   (foreign-library-function "libSDL2_image" "sdl_joystickgetserial" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6391 from /usr/include/SDL2/SDL_joystick.h:635:42
(define SDL-JoystickGetType
   (foreign-library-function "libSDL2_image" "sdl_joystickgettype" 
     #:return-type int       #:arg-types ('* ))


;; definition 6395 from /usr/include/SDL2/SDL_joystick.h:701:34
(define SDL-JoystickGetAttached
   (foreign-library-function "libSDL2_image" "sdl_joystickgetattached" 
     #:return-type int       #:arg-types ('* ))


;; definition 6397 from /usr/include/SDL2/SDL_joystick.h:733:29
(define SDL-JoystickNumAxes
   (foreign-library-function "libSDL2_image" "sdl_joysticknumaxes" 
     #:return-type int       #:arg-types ('* ))


;; definition 6398 from /usr/include/SDL2/SDL_joystick.h:751:29
(define SDL-JoystickNumBalls
   (foreign-library-function "libSDL2_image" "sdl_joysticknumballs" 
     #:return-type int       #:arg-types ('* ))


;; definition 6399 from /usr/include/SDL2/SDL_joystick.h:765:29
(define SDL-JoystickNumHats
   (foreign-library-function "libSDL2_image" "sdl_joysticknumhats" 
     #:return-type int       #:arg-types ('* ))


;; definition 6400 from /usr/include/SDL2/SDL_joystick.h:779:29
(define SDL-JoystickNumButtons
   (foreign-library-function "libSDL2_image" "sdl_joysticknumbuttons" 
     #:return-type int       #:arg-types ('* ))




;; definition 6402 from /usr/include/SDL2/SDL_joystick.h:821:29
(define SDL-JoystickEventState
   (foreign-library-function "libSDL2_image" "sdl_joystickeventstate" 
     #:return-type int       #:arg-types (int ))


;; definition 6404 from /usr/include/SDL2/SDL_joystick.h:866:34
(define SDL-JoystickGetAxisInitialState
   (foreign-library-function "libSDL2_image" "sdl_joystickgetaxisinitialstate" 
     #:return-type int       #:arg-types ('* int '* ))


;; definition 6406 from /usr/include/SDL2/SDL_joystick.h:929:29
(define SDL-JoystickGetBall
   (foreign-library-function "libSDL2_image" "sdl_joystickgetball" 
     #:return-type int       #:arg-types ('* int '* '* ))


;; definition 6410 from /usr/include/SDL2/SDL_joystick.h:1003:34
(define SDL-JoystickHasLED
   (foreign-library-function "libSDL2_image" "sdl_joystickhasled" 
     #:return-type int       #:arg-types ('* ))


;; definition 6411 from /usr/include/SDL2/SDL_joystick.h:1015:34
(define SDL-JoystickHasRumble
   (foreign-library-function "libSDL2_image" "sdl_joystickhasrumble" 
     #:return-type int       #:arg-types ('* ))


;; definition 6412 from /usr/include/SDL2/SDL_joystick.h:1027:34
(define SDL-JoystickHasRumbleTriggers
   (foreign-library-function "libSDL2_image" "sdl_joystickhasrumbletriggers" 
     #:return-type int       #:arg-types ('* ))


;; definition 6414 from /usr/include/SDL2/SDL_joystick.h:1056:29
(define SDL-JoystickSendEffect
   (foreign-library-function "libSDL2_image" "sdl_joysticksendeffect" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6415 from /usr/include/SDL2/SDL_joystick.h:1067:30
(define SDL-JoystickClose
   (foreign-library-function "libSDL2_image" "sdl_joystickclose" 
     #:return-type void       #:arg-types ('* ))


;; definition 6416 from /usr/include/SDL2/SDL_joystick.h:1078:48
(define SDL-JoystickCurrentPowerLevel
   (foreign-library-function "libSDL2_image" "sdl_joystickcurrentpowerlevel" 
     #:return-type int       #:arg-types ('* ))








;; definition 6425 from /usr/include/SDL2/SDL_sensor.h:170:37
(define SDL-SensorGetDeviceName
   (foreign-library-function "libSDL2_image" "sdl_sensorgetdevicename" 
     #:return-type '*       #:arg-types (int ))


;; definition 6426 from /usr/include/SDL2/SDL_sensor.h:181:40
(define SDL-SensorGetDeviceType
   (foreign-library-function "libSDL2_image" "sdl_sensorgetdevicetype" 
     #:return-type int       #:arg-types (int ))


;; definition 6427 from /usr/include/SDL2/SDL_sensor.h:192:29
(define SDL-SensorGetDeviceNonPortableType
   (foreign-library-function "libSDL2_image" "sdl_sensorgetdevicenonportabletype" 
     #:return-type int       #:arg-types (int ))


;; definition 6429 from /usr/include/SDL2/SDL_sensor.h:212:37
(define SDL-SensorOpen
   (foreign-library-function "libSDL2_image" "sdl_sensoropen" 
     #:return-type '*       #:arg-types (int ))


;; definition 6431 from /usr/include/SDL2/SDL_sensor.h:232:37
(define SDL-SensorGetName
   (foreign-library-function "libSDL2_image" "sdl_sensorgetname" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6432 from /usr/include/SDL2/SDL_sensor.h:243:40
(define SDL-SensorGetType
   (foreign-library-function "libSDL2_image" "sdl_sensorgettype" 
     #:return-type int       #:arg-types ('* ))


;; definition 6433 from /usr/include/SDL2/SDL_sensor.h:253:29
(define SDL-SensorGetNonPortableType
   (foreign-library-function "libSDL2_image" "sdl_sensorgetnonportabletype" 
     #:return-type int       #:arg-types ('* ))


;; definition 6435 from /usr/include/SDL2/SDL_sensor.h:277:29
(define SDL-SensorGetData
   (foreign-library-function "libSDL2_image" "sdl_sensorgetdata" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6436 from /usr/include/SDL2/SDL_sensor.h:294:29
(define SDL-SensorGetDataWithTimestamp
   (foreign-library-function "libSDL2_image" "sdl_sensorgetdatawithtimestamp" 
     #:return-type int       #:arg-types ('* '* '* int ))


;; definition 6437 from /usr/include/SDL2/SDL_sensor.h:303:30
(define SDL-SensorClose
   (foreign-library-function "libSDL2_image" "sdl_sensorclose" 
     #:return-type void       #:arg-types ('* ))




;; definition 6447 from /usr/include/SDL2/SDL_gamecontroller.h:173:29
(define SDL-GameControllerAddMappingsFromRW
   (foreign-library-function "libSDL2_image" "sdl_gamecontrolleraddmappingsfromrw" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6448 from /usr/include/SDL2/SDL_gamecontroller.h:215:29
(define SDL-GameControllerAddMapping
   (foreign-library-function "libSDL2_image" "sdl_gamecontrolleraddmapping" 
     #:return-type int       #:arg-types ('* ))




;; definition 6450 from /usr/include/SDL2/SDL_gamecontroller.h:234:32
(define SDL-GameControllerMappingForIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollermappingforindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6452 from /usr/include/SDL2/SDL_gamecontroller.h:269:32
(define SDL-GameControllerMapping
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollermapping" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6453 from /usr/include/SDL2/SDL_gamecontroller.h:287:34
(define SDL-IsGameController
   (foreign-library-function "libSDL2_image" "sdl_isgamecontroller" 
     #:return-type int       #:arg-types (int ))


;; definition 6454 from /usr/include/SDL2/SDL_gamecontroller.h:308:37
(define SDL-GameControllerNameForIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollernameforindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6455 from /usr/include/SDL2/SDL_gamecontroller.h:327:37
(define SDL-GameControllerPathForIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerpathforindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6456 from /usr/include/SDL2/SDL_gamecontroller.h:340:48
(define SDL-GameControllerTypeForIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollertypeforindex" 
     #:return-type int       #:arg-types (int ))


;; definition 6457 from /usr/include/SDL2/SDL_gamecontroller.h:354:31
(define SDL-GameControllerMappingForDeviceIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollermappingfordeviceindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6458 from /usr/include/SDL2/SDL_gamecontroller.h:378:45
(define SDL-GameControllerOpen
   (foreign-library-function "libSDL2_image" "sdl_gamecontrolleropen" 
     #:return-type '*       #:arg-types (int ))


;; definition 6460 from /usr/include/SDL2/SDL_gamecontroller.h:406:45
(define SDL-GameControllerFromPlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerfromplayerindex" 
     #:return-type '*       #:arg-types (int ))


;; definition 6461 from /usr/include/SDL2/SDL_gamecontroller.h:424:37
(define SDL-GameControllerName
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollername" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6462 from /usr/include/SDL2/SDL_gamecontroller.h:441:37
(define SDL-GameControllerPath
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerpath" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6463 from /usr/include/SDL2/SDL_gamecontroller.h:454:48
(define SDL-GameControllerGetType
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergettype" 
     #:return-type int       #:arg-types ('* ))


;; definition 6464 from /usr/include/SDL2/SDL_gamecontroller.h:466:29
(define SDL-GameControllerGetPlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetplayerindex" 
     #:return-type int       #:arg-types ('* ))


;; definition 6465 from /usr/include/SDL2/SDL_gamecontroller.h:477:30
(define SDL-GameControllerSetPlayerIndex
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollersetplayerindex" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6470 from /usr/include/SDL2/SDL_gamecontroller.h:538:38
(define SDL-GameControllerGetSerial
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetserial" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6472 from /usr/include/SDL2/SDL_gamecontroller.h:567:34
(define SDL-GameControllerGetAttached
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetattached" 
     #:return-type int       #:arg-types ('* ))


;; definition 6473 from /usr/include/SDL2/SDL_gamecontroller.h:588:39
(define SDL-GameControllerGetJoystick
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetjoystick" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6474 from /usr/include/SDL2/SDL_gamecontroller.h:608:29
(define SDL-GameControllerEventState
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollereventstate" 
     #:return-type int       #:arg-types (int ))




;; definition 6478 from /usr/include/SDL2/SDL_gamecontroller.h:667:48
(define SDL-GameControllerGetAxisFromString
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetaxisfromstring" 
     #:return-type int       #:arg-types ('* ))


;; definition 6479 from /usr/include/SDL2/SDL_gamecontroller.h:683:37
(define SDL-GameControllerGetStringForAxis
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetstringforaxis" 
     #:return-type '*       #:arg-types (int ))


;; definition 6481 from /usr/include/SDL2/SDL_gamecontroller.h:715:1
(define SDL-GameControllerHasAxis
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerhasaxis" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6485 from /usr/include/SDL2/SDL_gamecontroller.h:785:50
(define SDL-GameControllerGetButtonFromString
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetbuttonfromstring" 
     #:return-type int       #:arg-types ('* ))


;; definition 6486 from /usr/include/SDL2/SDL_gamecontroller.h:801:37
(define SDL-GameControllerGetStringForButton
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetstringforbutton" 
     #:return-type '*       #:arg-types (int ))


;; definition 6488 from /usr/include/SDL2/SDL_gamecontroller.h:832:34
(define SDL-GameControllerHasButton
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerhasbutton" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6490 from /usr/include/SDL2/SDL_gamecontroller.h:855:29
(define SDL-GameControllerGetNumTouchpads
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetnumtouchpads" 
     #:return-type int       #:arg-types ('* ))


;; definition 6491 from /usr/include/SDL2/SDL_gamecontroller.h:863:29
(define SDL-GameControllerGetNumTouchpadFingers
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetnumtouchpadfingers" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6492 from /usr/include/SDL2/SDL_gamecontroller.h:870:29
(define SDL-GameControllerGetTouchpadFinger
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergettouchpadfinger" 
     #:return-type int       #:arg-types ('* int int '* '* '* '* ))


;; definition 6493 from /usr/include/SDL2/SDL_gamecontroller.h:881:34
(define SDL-GameControllerHasSensor
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerhassensor" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6494 from /usr/include/SDL2/SDL_gamecontroller.h:893:29
(define SDL-GameControllerSetSensorEnabled
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollersetsensorenabled" 
     #:return-type int       #:arg-types ('* int int ))


;; definition 6495 from /usr/include/SDL2/SDL_gamecontroller.h:904:34
(define SDL-GameControllerIsSensorEnabled
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerissensorenabled" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6496 from /usr/include/SDL2/SDL_gamecontroller.h:916:31
(define SDL-GameControllerGetSensorDataRate
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetsensordatarate" 
     #:return-type float       #:arg-types ('* int ))


;; definition 6497 from /usr/include/SDL2/SDL_gamecontroller.h:932:29
(define SDL-GameControllerGetSensorData
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetsensordata" 
     #:return-type int       #:arg-types ('* int '* int ))


;; definition 6498 from /usr/include/SDL2/SDL_gamecontroller.h:951:29
(define SDL-GameControllerGetSensorDataWithTimestamp
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetsensordatawithtimestamp" 
     #:return-type int       #:arg-types ('* int '* '* int ))


;; definition 6501 from /usr/include/SDL2/SDL_gamecontroller.h:1007:34
(define SDL-GameControllerHasLED
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerhasled" 
     #:return-type int       #:arg-types ('* ))


;; definition 6502 from /usr/include/SDL2/SDL_gamecontroller.h:1020:34
(define SDL-GameControllerHasRumble
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerhasrumble" 
     #:return-type int       #:arg-types ('* ))


;; definition 6503 from /usr/include/SDL2/SDL_gamecontroller.h:1033:34
(define SDL-GameControllerHasRumbleTriggers
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerhasrumbletriggers" 
     #:return-type int       #:arg-types ('* ))


;; definition 6505 from /usr/include/SDL2/SDL_gamecontroller.h:1059:29
(define SDL-GameControllerSendEffect
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollersendeffect" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6506 from /usr/include/SDL2/SDL_gamecontroller.h:1071:30
(define SDL-GameControllerClose
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollerclose" 
     #:return-type void       #:arg-types ('* ))


;; definition 6507 from /usr/include/SDL2/SDL_gamecontroller.h:1085:37
(define SDL-GameControllerGetAppleSFSymbolsNameForButton
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetapplesfsymbolsnameforbutton" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 6508 from /usr/include/SDL2/SDL_gamecontroller.h:1099:37
(define SDL-GameControllerGetAppleSFSymbolsNameForAxis
   (foreign-library-function "libSDL2_image" "sdl_gamecontrollergetapplesfsymbolsnameforaxis" 
     #:return-type '*       #:arg-types ('* int ))




;; definition 6517 from /usr/include/SDL2/SDL_touch.h:104:37
(define SDL-GetTouchName
   (foreign-library-function "libSDL2_image" "sdl_gettouchname" 
     #:return-type '*       #:arg-types (int ))


;; definition 6523 from /usr/include/SDL2/SDL_gesture.h:76:29
(define SDL-SaveAllDollarTemplates
   (foreign-library-function "libSDL2_image" "sdl_savealldollartemplates" 
     #:return-type int       #:arg-types ('* ))




;; definition 6600 from /usr/include/SDL2/SDL_events.h:913:29
(define SDL-PollEvent
   (foreign-library-function "libSDL2_image" "sdl_pollevent" 
     #:return-type int       #:arg-types ('* ))


;; definition 6601 from /usr/include/SDL2/SDL_events.h:935:29
(define SDL-WaitEvent
   (foreign-library-function "libSDL2_image" "sdl_waitevent" 
     #:return-type int       #:arg-types ('* ))


;; definition 6602 from /usr/include/SDL2/SDL_events.h:961:29
(define SDL-WaitEventTimeout
   (foreign-library-function "libSDL2_image" "sdl_waiteventtimeout" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6603 from /usr/include/SDL2/SDL_events.h:996:29
(define SDL-PushEvent
   (foreign-library-function "libSDL2_image" "sdl_pushevent" 
     #:return-type int       #:arg-types ('* ))


;; definition 6605 from /usr/include/SDL2/SDL_events.h:1054:30
(define SDL-SetEventFilter
   (foreign-library-function "libSDL2_image" "sdl_seteventfilter" 
     #:return-type void       #:arg-types (?fn-ptr? '* ))


;; definition 6606 from /usr/include/SDL2/SDL_events.h:1072:34
(define SDL-GetEventFilter
   (foreign-library-function "libSDL2_image" "sdl_geteventfilter" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6607 from /usr/include/SDL2/SDL_events.h:1101:30
(define SDL-AddEventWatch
   (foreign-library-function "libSDL2_image" "sdl_addeventwatch" 
     #:return-type void       #:arg-types (?fn-ptr? '* ))


;; definition 6608 from /usr/include/SDL2/SDL_events.h:1117:30
(define SDL-DelEventWatch
   (foreign-library-function "libSDL2_image" "sdl_deleventwatch" 
     #:return-type void       #:arg-types (?fn-ptr? '* ))


;; definition 6609 from /usr/include/SDL2/SDL_events.h:1136:30
(define SDL-FilterEvents
   (foreign-library-function "libSDL2_image" "sdl_filterevents" 
     #:return-type void       #:arg-types (?fn-ptr? '* ))




;; definition 6613 from /usr/include/SDL2/SDL_filesystem.h:139:31
(define SDL-GetPrefPath
   (foreign-library-function "libSDL2_image" "sdl_getprefpath" 
     #:return-type '*       #:arg-types ('* '* ))




;; definition 6633 from /usr/include/SDL2/SDL_haptic.h:862:37
(define SDL-HapticName
   (foreign-library-function "libSDL2_image" "sdl_hapticname" 
     #:return-type '*       #:arg-types (int ))


;; definition 6634 from /usr/include/SDL2/SDL_haptic.h:889:37
(define SDL-HapticOpen
   (foreign-library-function "libSDL2_image" "sdl_hapticopen" 
     #:return-type '*       #:arg-types (int ))


;; definition 6635 from /usr/include/SDL2/SDL_haptic.h:903:29
(define SDL-HapticOpened
   (foreign-library-function "libSDL2_image" "sdl_hapticopened" 
     #:return-type int       #:arg-types (int ))


;; definition 6636 from /usr/include/SDL2/SDL_haptic.h:917:29
(define SDL-HapticIndex
   (foreign-library-function "libSDL2_image" "sdl_hapticindex" 
     #:return-type int       #:arg-types ('* ))






;; definition 6639 from /usr/include/SDL2/SDL_haptic.h:955:29
(define SDL-JoystickIsHaptic
   (foreign-library-function "libSDL2_image" "sdl_joystickishaptic" 
     #:return-type int       #:arg-types ('* ))


;; definition 6640 from /usr/include/SDL2/SDL_haptic.h:978:37
(define SDL-HapticOpenFromJoystick
   (foreign-library-function "libSDL2_image" "sdl_hapticopenfromjoystick" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6641 from /usr/include/SDL2/SDL_haptic.h:990:30
(define SDL-HapticClose
   (foreign-library-function "libSDL2_image" "sdl_hapticclose" 
     #:return-type void       #:arg-types ('* ))


;; definition 6642 from /usr/include/SDL2/SDL_haptic.h:1008:29
(define SDL-HapticNumEffects
   (foreign-library-function "libSDL2_image" "sdl_hapticnumeffects" 
     #:return-type int       #:arg-types ('* ))


;; definition 6643 from /usr/include/SDL2/SDL_haptic.h:1025:29
(define SDL-HapticNumEffectsPlaying
   (foreign-library-function "libSDL2_image" "sdl_hapticnumeffectsplaying" 
     #:return-type int       #:arg-types ('* ))


;; definition 6644 from /usr/include/SDL2/SDL_haptic.h:1039:38
(define SDL-HapticQuery
   (foreign-library-function "libSDL2_image" "sdl_hapticquery" 
     #:return-type uint       #:arg-types ('* ))


;; definition 6645 from /usr/include/SDL2/SDL_haptic.h:1054:29
(define SDL-HapticNumAxes
   (foreign-library-function "libSDL2_image" "sdl_hapticnumaxes" 
     #:return-type int       #:arg-types ('* ))


;; definition 6646 from /usr/include/SDL2/SDL_haptic.h:1070:29
(define SDL-HapticEffectSupported
   (foreign-library-function "libSDL2_image" "sdl_hapticeffectsupported" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6647 from /usr/include/SDL2/SDL_haptic.h:1089:29
(define SDL-HapticNewEffect
   (foreign-library-function "libSDL2_image" "sdl_hapticneweffect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6648 from /usr/include/SDL2/SDL_haptic.h:1113:29
(define SDL-HapticUpdateEffect
   (foreign-library-function "libSDL2_image" "sdl_hapticupdateeffect" 
     #:return-type int       #:arg-types ('* int '* ))


;; definition 6650 from /usr/include/SDL2/SDL_haptic.h:1158:29
(define SDL-HapticStopEffect
   (foreign-library-function "libSDL2_image" "sdl_hapticstopeffect" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6651 from /usr/include/SDL2/SDL_haptic.h:1174:30
(define SDL-HapticDestroyEffect
   (foreign-library-function "libSDL2_image" "sdl_hapticdestroyeffect" 
     #:return-type void       #:arg-types ('* int ))


;; definition 6652 from /usr/include/SDL2/SDL_haptic.h:1192:29
(define SDL-HapticGetEffectStatus
   (foreign-library-function "libSDL2_image" "sdl_hapticgeteffectstatus" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6653 from /usr/include/SDL2/SDL_haptic.h:1215:29
(define SDL-HapticSetGain
   (foreign-library-function "libSDL2_image" "sdl_hapticsetgain" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6654 from /usr/include/SDL2/SDL_haptic.h:1234:29
(define SDL-HapticSetAutocenter
   (foreign-library-function "libSDL2_image" "sdl_hapticsetautocenter" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6655 from /usr/include/SDL2/SDL_haptic.h:1254:29
(define SDL-HapticPause
   (foreign-library-function "libSDL2_image" "sdl_hapticpause" 
     #:return-type int       #:arg-types ('* ))


;; definition 6656 from /usr/include/SDL2/SDL_haptic.h:1269:29
(define SDL-HapticUnpause
   (foreign-library-function "libSDL2_image" "sdl_hapticunpause" 
     #:return-type int       #:arg-types ('* ))


;; definition 6657 from /usr/include/SDL2/SDL_haptic.h:1280:29
(define SDL-HapticStopAll
   (foreign-library-function "libSDL2_image" "sdl_hapticstopall" 
     #:return-type int       #:arg-types ('* ))


;; definition 6658 from /usr/include/SDL2/SDL_haptic.h:1296:29
(define SDL-HapticRumbleSupported
   (foreign-library-function "libSDL2_image" "sdl_hapticrumblesupported" 
     #:return-type int       #:arg-types ('* ))


;; definition 6659 from /usr/include/SDL2/SDL_haptic.h:1312:29
(define SDL-HapticRumbleInit
   (foreign-library-function "libSDL2_image" "sdl_hapticrumbleinit" 
     #:return-type int       #:arg-types ('* ))


;; definition 6661 from /usr/include/SDL2/SDL_haptic.h:1344:29
(define SDL-HapticRumbleStop
   (foreign-library-function "libSDL2_image" "sdl_hapticrumblestop" 
     #:return-type int       #:arg-types ('* ))






;; definition 6670 from /usr/include/SDL2/SDL_hidapi.h:203:30
(define SDL-hid-free-enumeration
   (foreign-library-function "libSDL2_image" "sdl_hid_free_enumeration" 
     #:return-type void       #:arg-types ('* ))


;; definition 6672 from /usr/include/SDL2/SDL_hidapi.h:235:42
(define SDL-hid-open-path
   (foreign-library-function "libSDL2_image" "sdl_hid_open_path" 
     #:return-type '*       #:arg-types ('* int ))


;; definition 6676 from /usr/include/SDL2/SDL_hidapi.h:320:29
(define SDL-hid-set-nonblocking
   (foreign-library-function "libSDL2_image" "sdl_hid_set_nonblocking" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6679 from /usr/include/SDL2/SDL_hidapi.h:375:30
(define SDL-hid-close
   (foreign-library-function "libSDL2_image" "sdl_hid_close" 
     #:return-type void       #:arg-types ('* ))


;; definition 6684 from /usr/include/SDL2/SDL_hidapi.h:433:30
(define SDL-hid-ble-scan
   (foreign-library-function "libSDL2_image" "sdl_hid_ble_scan" 
     #:return-type void       #:arg-types (int ))


;; definition 6687 from /usr/include/SDL2/SDL_hints.h:3153:34
(define SDL-SetHintWithPriority
   (foreign-library-function "libSDL2_image" "sdl_sethintwithpriority" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6688 from /usr/include/SDL2/SDL_hints.h:3173:34
(define SDL-SetHint
   (foreign-library-function "libSDL2_image" "sdl_sethint" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6689 from /usr/include/SDL2/SDL_hints.h:3191:34
(define SDL-ResetHint
   (foreign-library-function "libSDL2_image" "sdl_resethint" 
     #:return-type int       #:arg-types ('* ))




;; definition 6691 from /usr/include/SDL2/SDL_hints.h:3219:38
(define SDL-GetHint
   (foreign-library-function "libSDL2_image" "sdl_gethint" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6692 from /usr/include/SDL2/SDL_hints.h:3234:34
(define SDL-GetHintBoolean
   (foreign-library-function "libSDL2_image" "sdl_gethintboolean" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6694 from /usr/include/SDL2/SDL_hints.h:3258:30
(define SDL-AddHintCallback
   (foreign-library-function "libSDL2_image" "sdl_addhintcallback" 
     #:return-type void       #:arg-types ('* ?fn-ptr? '* ))


;; definition 6695 from /usr/include/SDL2/SDL_hints.h:3274:30
(define SDL-DelHintCallback
   (foreign-library-function "libSDL2_image" "sdl_delhintcallback" 
     #:return-type void       #:arg-types ('* ?fn-ptr? '* ))




;; definition 6697 from /usr/include/SDL2/SDL_loadso.h:67:31
(define SDL-LoadObject
   (foreign-library-function "libSDL2_image" "sdl_loadobject" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6698 from /usr/include/SDL2/SDL_loadso.h:94:31
(define SDL-LoadFunction
   (foreign-library-function "libSDL2_image" "sdl_loadfunction" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 6699 from /usr/include/SDL2/SDL_loadso.h:107:30
(define SDL-UnloadObject
   (foreign-library-function "libSDL2_image" "sdl_unloadobject" 
     #:return-type void       #:arg-types ('* ))


;; definition 6704 from /usr/include/SDL2/SDL_log.h:123:30
(define SDL-LogSetAllPriority
   (foreign-library-function "libSDL2_image" "sdl_logsetallpriority" 
     #:return-type void       #:arg-types (int ))


;; definition 6705 from /usr/include/SDL2/SDL_log.h:136:30
(define SDL-LogSetPriority
   (foreign-library-function "libSDL2_image" "sdl_logsetpriority" 
     #:return-type void       #:arg-types (int int ))


;; definition 6706 from /usr/include/SDL2/SDL_log.h:149:41
(define SDL-LogGetPriority
   (foreign-library-function "libSDL2_image" "sdl_loggetpriority" 
     #:return-type int       #:arg-types (int ))




;; definition 6708 from /usr/include/SDL2/SDL_log.h:182:30
(define SDL-Log
   (foreign-library-function "libSDL2_image" "sdl_log" 
     #:return-type void       #:arg-types ('* ))


;; definition 6709 from /usr/include/SDL2/SDL_log.h:203:30
(define SDL-LogVerbose
   (foreign-library-function "libSDL2_image" "sdl_logverbose" 
     #:return-type void       #:arg-types (int '* ))


;; definition 6710 from /usr/include/SDL2/SDL_log.h:224:30
(define SDL-LogDebug
   (foreign-library-function "libSDL2_image" "sdl_logdebug" 
     #:return-type void       #:arg-types (int '* ))


;; definition 6711 from /usr/include/SDL2/SDL_log.h:245:30
(define SDL-LogInfo
   (foreign-library-function "libSDL2_image" "sdl_loginfo" 
     #:return-type void       #:arg-types (int '* ))


;; definition 6712 from /usr/include/SDL2/SDL_log.h:266:30
(define SDL-LogWarn
   (foreign-library-function "libSDL2_image" "sdl_logwarn" 
     #:return-type void       #:arg-types (int '* ))


;; definition 6713 from /usr/include/SDL2/SDL_log.h:287:30
(define SDL-LogError
   (foreign-library-function "libSDL2_image" "sdl_logerror" 
     #:return-type void       #:arg-types (int '* ))


;; definition 6714 from /usr/include/SDL2/SDL_log.h:308:30
(define SDL-LogCritical
   (foreign-library-function "libSDL2_image" "sdl_logcritical" 
     #:return-type void       #:arg-types (int '* ))


;; definition 6715 from /usr/include/SDL2/SDL_log.h:330:30
(define SDL-LogMessage
   (foreign-library-function "libSDL2_image" "sdl_logmessage" 
     #:return-type void       #:arg-types (int int '* ))


;; definition 6718 from /usr/include/SDL2/SDL_log.h:382:30
(define SDL-LogGetOutputFunction
   (foreign-library-function "libSDL2_image" "sdl_loggetoutputfunction" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 6719 from /usr/include/SDL2/SDL_log.h:394:30
(define SDL-LogSetOutputFunction
   (foreign-library-function "libSDL2_image" "sdl_logsetoutputfunction" 
     #:return-type void       #:arg-types (?fn-ptr? '* ))


;; definition 6734 from /usr/include/SDL2/SDL_messagebox.h:143:29
(define SDL-ShowMessageBox
   (foreign-library-function "libSDL2_image" "sdl_showmessagebox" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6740 from /usr/include/SDL2/SDL_metal.h:103:30
(define SDL-Metal-GetDrawableSize
   (foreign-library-function "libSDL2_image" "sdl_metal_getdrawablesize" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6743 from /usr/include/SDL2/SDL_power.h:77:40
(define SDL-GetPowerInfo
   (foreign-library-function "libSDL2_image" "sdl_getpowerinfo" 
     #:return-type int       #:arg-types ('* '* ))




;; definition 6763 from /usr/include/SDL2/SDL_render.h:186:29
(define SDL-GetRenderDriverInfo
   (foreign-library-function "libSDL2_image" "sdl_getrenderdriverinfo" 
     #:return-type int       #:arg-types (int '* ))


;; definition 6766 from /usr/include/SDL2/SDL_render.h:250:40
(define SDL-CreateSoftwareRenderer
   (foreign-library-function "libSDL2_image" "sdl_createsoftwarerenderer" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6767 from /usr/include/SDL2/SDL_render.h:263:40
(define SDL-GetRenderer
   (foreign-library-function "libSDL2_image" "sdl_getrenderer" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6768 from /usr/include/SDL2/SDL_render.h:274:38
(define SDL-RenderGetWindow
   (foreign-library-function "libSDL2_image" "sdl_rendergetwindow" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6769 from /usr/include/SDL2/SDL_render.h:289:29
(define SDL-GetRendererInfo
   (foreign-library-function "libSDL2_image" "sdl_getrendererinfo" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6770 from /usr/include/SDL2/SDL_render.h:309:29
(define SDL-GetRendererOutputSize
   (foreign-library-function "libSDL2_image" "sdl_getrendereroutputsize" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 6772 from /usr/include/SDL2/SDL_render.h:363:39
(define SDL-CreateTextureFromSurface
   (foreign-library-function "libSDL2_image" "sdl_createtexturefromsurface" 
     #:return-type '*       #:arg-types ('* '* ))


;; definition 6773 from /usr/include/SDL2/SDL_render.h:387:29
(define SDL-QueryTexture
   (foreign-library-function "libSDL2_image" "sdl_querytexture" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))


;; definition 6775 from /usr/include/SDL2/SDL_render.h:434:29
(define SDL-GetTextureColorMod
   (foreign-library-function "libSDL2_image" "sdl_gettexturecolormod" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6777 from /usr/include/SDL2/SDL_render.h:475:29
(define SDL-GetTextureAlphaMod
   (foreign-library-function "libSDL2_image" "sdl_gettexturealphamod" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6778 from /usr/include/SDL2/SDL_render.h:494:29
(define SDL-SetTextureBlendMode
   (foreign-library-function "libSDL2_image" "sdl_settextureblendmode" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6779 from /usr/include/SDL2/SDL_render.h:509:29
(define SDL-GetTextureBlendMode
   (foreign-library-function "libSDL2_image" "sdl_gettextureblendmode" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6780 from /usr/include/SDL2/SDL_render.h:525:29
(define SDL-SetTextureScaleMode
   (foreign-library-function "libSDL2_image" "sdl_settexturescalemode" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6781 from /usr/include/SDL2/SDL_render.h:539:29
(define SDL-GetTextureScaleMode
   (foreign-library-function "libSDL2_image" "sdl_gettexturescalemode" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6782 from /usr/include/SDL2/SDL_render.h:553:29
(define SDL-SetTextureUserData
   (foreign-library-function "libSDL2_image" "sdl_settextureuserdata" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6783 from /usr/include/SDL2/SDL_render.h:567:32
(define SDL-GetTextureUserData
   (foreign-library-function "libSDL2_image" "sdl_gettextureuserdata" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6784 from /usr/include/SDL2/SDL_render.h:598:29
(define SDL-UpdateTexture
   (foreign-library-function "libSDL2_image" "sdl_updatetexture" 
     #:return-type int       #:arg-types ('* '* '* int ))


;; definition 6785 from /usr/include/SDL2/SDL_render.h:629:29
(define SDL-UpdateYUVTexture
   (foreign-library-function "libSDL2_image" "sdl_updateyuvtexture" 
     #:return-type int       #:arg-types ('* '* '* int '* int '* int ))


;; definition 6786 from /usr/include/SDL2/SDL_render.h:655:29
(define SDL-UpdateNVTexture
   (foreign-library-function "libSDL2_image" "sdl_updatenvtexture" 
     #:return-type int       #:arg-types ('* '* '* int '* int ))


;; definition 6787 from /usr/include/SDL2/SDL_render.h:687:29
(define SDL-LockTexture
   (foreign-library-function "libSDL2_image" "sdl_locktexture" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6788 from /usr/include/SDL2/SDL_render.h:723:29
(define SDL-LockTextureToSurface
   (foreign-library-function "libSDL2_image" "sdl_locktexturetosurface" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 6789 from /usr/include/SDL2/SDL_render.h:744:30
(define SDL-UnlockTexture
   (foreign-library-function "libSDL2_image" "sdl_unlocktexture" 
     #:return-type void       #:arg-types ('* ))


;; definition 6790 from /usr/include/SDL2/SDL_render.h:756:34
(define SDL-RenderTargetSupported
   (foreign-library-function "libSDL2_image" "sdl_rendertargetsupported" 
     #:return-type int       #:arg-types ('* ))


;; definition 6791 from /usr/include/SDL2/SDL_render.h:783:29
(define SDL-SetRenderTarget
   (foreign-library-function "libSDL2_image" "sdl_setrendertarget" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6792 from /usr/include/SDL2/SDL_render.h:799:39
(define SDL-GetRenderTarget
   (foreign-library-function "libSDL2_image" "sdl_getrendertarget" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6793 from /usr/include/SDL2/SDL_render.h:827:29
(define SDL-RenderSetLogicalSize
   (foreign-library-function "libSDL2_image" "sdl_rendersetlogicalsize" 
     #:return-type int       #:arg-types ('* int int ))


;; definition 6794 from /usr/include/SDL2/SDL_render.h:848:30
(define SDL-RenderGetLogicalSize
   (foreign-library-function "libSDL2_image" "sdl_rendergetlogicalsize" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6795 from /usr/include/SDL2/SDL_render.h:867:29
(define SDL-RenderSetIntegerScale
   (foreign-library-function "libSDL2_image" "sdl_rendersetintegerscale" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6796 from /usr/include/SDL2/SDL_render.h:881:34
(define SDL-RenderGetIntegerScale
   (foreign-library-function "libSDL2_image" "sdl_rendergetintegerscale" 
     #:return-type int       #:arg-types ('* ))


;; definition 6797 from /usr/include/SDL2/SDL_render.h:899:29
(define SDL-RenderSetViewport
   (foreign-library-function "libSDL2_image" "sdl_rendersetviewport" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6798 from /usr/include/SDL2/SDL_render.h:912:30
(define SDL-RenderGetViewport
   (foreign-library-function "libSDL2_image" "sdl_rendergetviewport" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 6799 from /usr/include/SDL2/SDL_render.h:930:29
(define SDL-RenderSetClipRect
   (foreign-library-function "libSDL2_image" "sdl_rendersetcliprect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6800 from /usr/include/SDL2/SDL_render.h:946:30
(define SDL-RenderGetClipRect
   (foreign-library-function "libSDL2_image" "sdl_rendergetcliprect" 
     #:return-type void       #:arg-types ('* '* ))


;; definition 6801 from /usr/include/SDL2/SDL_render.h:961:34
(define SDL-RenderIsClipEnabled
   (foreign-library-function "libSDL2_image" "sdl_renderisclipenabled" 
     #:return-type int       #:arg-types ('* ))


;; definition 6802 from /usr/include/SDL2/SDL_render.h:986:29
(define SDL-RenderSetScale
   (foreign-library-function "libSDL2_image" "sdl_rendersetscale" 
     #:return-type int       #:arg-types ('* float float ))


;; definition 6803 from /usr/include/SDL2/SDL_render.h:1000:30
(define SDL-RenderGetScale
   (foreign-library-function "libSDL2_image" "sdl_rendergetscale" 
     #:return-type void       #:arg-types ('* '* '* ))


;; definition 6804 from /usr/include/SDL2/SDL_render.h:1024:30
(define SDL-RenderWindowToLogical
   (foreign-library-function "libSDL2_image" "sdl_renderwindowtological" 
     #:return-type void       #:arg-types ('* int int '* '* ))


;; definition 6805 from /usr/include/SDL2/SDL_render.h:1050:30
(define SDL-RenderLogicalToWindow
   (foreign-library-function "libSDL2_image" "sdl_renderlogicaltowindow" 
     #:return-type void       #:arg-types ('* float float '* '* ))


;; definition 6807 from /usr/include/SDL2/SDL_render.h:1106:29
(define SDL-GetRenderDrawColor
   (foreign-library-function "libSDL2_image" "sdl_getrenderdrawcolor" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))


;; definition 6808 from /usr/include/SDL2/SDL_render.h:1132:29
(define SDL-SetRenderDrawBlendMode
   (foreign-library-function "libSDL2_image" "sdl_setrenderdrawblendmode" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6809 from /usr/include/SDL2/SDL_render.h:1147:29
(define SDL-GetRenderDrawBlendMode
   (foreign-library-function "libSDL2_image" "sdl_getrenderdrawblendmode" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6810 from /usr/include/SDL2/SDL_render.h:1164:29
(define SDL-RenderClear
   (foreign-library-function "libSDL2_image" "sdl_renderclear" 
     #:return-type int       #:arg-types ('* ))


;; definition 6811 from /usr/include/SDL2/SDL_render.h:1191:29
(define SDL-RenderDrawPoint
   (foreign-library-function "libSDL2_image" "sdl_renderdrawpoint" 
     #:return-type int       #:arg-types ('* int int ))


;; definition 6812 from /usr/include/SDL2/SDL_render.h:1217:29
(define SDL-RenderDrawPoints
   (foreign-library-function "libSDL2_image" "sdl_renderdrawpoints" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6813 from /usr/include/SDL2/SDL_render.h:1248:29
(define SDL-RenderDrawLine
   (foreign-library-function "libSDL2_image" "sdl_renderdrawline" 
     #:return-type int       #:arg-types ('* int int int int ))


;; definition 6814 from /usr/include/SDL2/SDL_render.h:1274:29
(define SDL-RenderDrawLines
   (foreign-library-function "libSDL2_image" "sdl_renderdrawlines" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6815 from /usr/include/SDL2/SDL_render.h:1300:29
(define SDL-RenderDrawRect
   (foreign-library-function "libSDL2_image" "sdl_renderdrawrect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6816 from /usr/include/SDL2/SDL_render.h:1326:29
(define SDL-RenderDrawRects
   (foreign-library-function "libSDL2_image" "sdl_renderdrawrects" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6817 from /usr/include/SDL2/SDL_render.h:1356:29
(define SDL-RenderFillRect
   (foreign-library-function "libSDL2_image" "sdl_renderfillrect" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6818 from /usr/include/SDL2/SDL_render.h:1381:29
(define SDL-RenderFillRects
   (foreign-library-function "libSDL2_image" "sdl_renderfillrects" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6819 from /usr/include/SDL2/SDL_render.h:1414:29
(define SDL-RenderCopy
   (foreign-library-function "libSDL2_image" "sdl_rendercopy" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6820 from /usr/include/SDL2/SDL_render.h:1459:29
(define SDL-RenderCopyEx
   (foreign-library-function "libSDL2_image" "sdl_rendercopyex" 
     #:return-type int       #:arg-types ('* '* '* '* double '* int ))


;; definition 6821 from /usr/include/SDL2/SDL_render.h:1478:29
(define SDL-RenderDrawPointF
   (foreign-library-function "libSDL2_image" "sdl_renderdrawpointf" 
     #:return-type int       #:arg-types ('* float float ))


;; definition 6822 from /usr/include/SDL2/SDL_render.h:1491:29
(define SDL-RenderDrawPointsF
   (foreign-library-function "libSDL2_image" "sdl_renderdrawpointsf" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6823 from /usr/include/SDL2/SDL_render.h:1507:29
(define SDL-RenderDrawLineF
   (foreign-library-function "libSDL2_image" "sdl_renderdrawlinef" 
     #:return-type int       #:arg-types ('* float float float float ))


;; definition 6824 from /usr/include/SDL2/SDL_render.h:1521:29
(define SDL-RenderDrawLinesF
   (foreign-library-function "libSDL2_image" "sdl_renderdrawlinesf" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6825 from /usr/include/SDL2/SDL_render.h:1535:29
(define SDL-RenderDrawRectF
   (foreign-library-function "libSDL2_image" "sdl_renderdrawrectf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6826 from /usr/include/SDL2/SDL_render.h:1549:29
(define SDL-RenderDrawRectsF
   (foreign-library-function "libSDL2_image" "sdl_renderdrawrectsf" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6827 from /usr/include/SDL2/SDL_render.h:1564:29
(define SDL-RenderFillRectF
   (foreign-library-function "libSDL2_image" "sdl_renderfillrectf" 
     #:return-type int       #:arg-types ('* '* ))


;; definition 6828 from /usr/include/SDL2/SDL_render.h:1578:29
(define SDL-RenderFillRectsF
   (foreign-library-function "libSDL2_image" "sdl_renderfillrectsf" 
     #:return-type int       #:arg-types ('* '* int ))


;; definition 6829 from /usr/include/SDL2/SDL_render.h:1596:29
(define SDL-RenderCopyF
   (foreign-library-function "libSDL2_image" "sdl_rendercopyf" 
     #:return-type int       #:arg-types ('* '* '* '* ))


;; definition 6830 from /usr/include/SDL2/SDL_render.h:1622:29
(define SDL-RenderCopyExF
   (foreign-library-function "libSDL2_image" "sdl_rendercopyexf" 
     #:return-type int       #:arg-types ('* '* '* '* double '* int ))


;; definition 6831 from /usr/include/SDL2/SDL_render.h:1650:29
(define SDL-RenderGeometry
   (foreign-library-function "libSDL2_image" "sdl_rendergeometry" 
     #:return-type int       #:arg-types ('* '* '* int '* int ))


;; definition 6832 from /usr/include/SDL2/SDL_render.h:1680:29
(define SDL-RenderGeometryRaw
   (foreign-library-function "libSDL2_image" "sdl_rendergeometryraw" 
     #:return-type int       #:arg-types ('* '* '* int '* int '* int int '* int int ))


;; definition 6834 from /usr/include/SDL2/SDL_render.h:1760:30
(define SDL-RenderPresent
   (foreign-library-function "libSDL2_image" "sdl_renderpresent" 
     #:return-type void       #:arg-types ('* ))


;; definition 6835 from /usr/include/SDL2/SDL_render.h:1775:30
(define SDL-DestroyTexture
   (foreign-library-function "libSDL2_image" "sdl_destroytexture" 
     #:return-type void       #:arg-types ('* ))


;; definition 6836 from /usr/include/SDL2/SDL_render.h:1789:30
(define SDL-DestroyRenderer
   (foreign-library-function "libSDL2_image" "sdl_destroyrenderer" 
     #:return-type void       #:arg-types ('* ))


;; definition 6837 from /usr/include/SDL2/SDL_render.h:1820:29
(define SDL-RenderFlush
   (foreign-library-function "libSDL2_image" "sdl_renderflush" 
     #:return-type int       #:arg-types ('* ))


;; definition 6838 from /usr/include/SDL2/SDL_render.h:1858:29
(define SDL-GL-BindTexture
   (foreign-library-function "libSDL2_image" "sdl_gl_bindtexture" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 6839 from /usr/include/SDL2/SDL_render.h:1874:29
(define SDL-GL-UnbindTexture
   (foreign-library-function "libSDL2_image" "sdl_gl_unbindtexture" 
     #:return-type int       #:arg-types ('* ))


;; definition 6840 from /usr/include/SDL2/SDL_render.h:1890:31
(define SDL-RenderGetMetalLayer
   (foreign-library-function "libSDL2_image" "sdl_rendergetmetallayer" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6841 from /usr/include/SDL2/SDL_render.h:1911:31
(define SDL-RenderGetMetalCommandEncoder
   (foreign-library-function "libSDL2_image" "sdl_rendergetmetalcommandencoder" 
     #:return-type '*       #:arg-types ('* ))


;; definition 6842 from /usr/include/SDL2/SDL_render.h:1922:29
(define SDL-RenderSetVSync
   (foreign-library-function "libSDL2_image" "sdl_rendersetvsync" 
     #:return-type int       #:arg-types ('* int ))


;; definition 6844 from /usr/include/SDL2/SDL_shape.h:82:34
(define SDL-IsShapedWindow
   (foreign-library-function "libSDL2_image" "sdl_isshapedwindow" 
     #:return-type int       #:arg-types ('* ))


;; definition 6850 from /usr/include/SDL2/SDL_shape.h:128:29
(define SDL-SetWindowShape
   (foreign-library-function "libSDL2_image" "sdl_setwindowshape" 
     #:return-type int       #:arg-types ('* '* '* ))


;; definition 6851 from /usr/include/SDL2/SDL_shape.h:147:29
(define SDL-GetShapedWindowMode
   (foreign-library-function "libSDL2_image" "sdl_getshapedwindowmode" 
     #:return-type int       #:arg-types ('* '* ))
















;; definition 6869 from /usr/include/SDL2/SDL_timer.h:211:34
(define SDL-RemoveTimer
   (foreign-library-function "libSDL2_image" "sdl_removetimer" 
     #:return-type int       #:arg-types (int ))


;; definition 6872 from /usr/include/SDL2/SDL_version.h:142:30
(define SDL-GetVersion
   (foreign-library-function "libSDL2_image" "sdl_getversion" 
     #:return-type void       #:arg-types ('* ))








;; definition 6878 from /usr/include/SDL2/SDL_misc.h:69:29
(define SDL-OpenURL
   (foreign-library-function "libSDL2_image" "sdl_openurl" 
     #:return-type int       #:arg-types ('* ))





