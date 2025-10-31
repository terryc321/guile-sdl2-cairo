
(define (cairo-create)
"cairo-t *
cairo-create (cairo-surface-t *target) 

")
(define (cairo-reference)
"cairo-t *
cairo-reference (cairo-t *cr) 

")
(define (cairo-destroy)
"void
cairo-destroy (cairo-t *cr) 

")
(define (cairo-status)
"cairo-status-t
cairo-status (cairo-t *cr) 

")
(define (cairo-save)
"void
cairo-save (cairo-t *cr) 

")
(define (cairo-restore)
"void
cairo-restore (cairo-t *cr) 

")
(define (cairo-get-target)
"cairo-surface-t *
cairo-get-target (cairo-t *cr) 

")
(define (cairo-push-group)
"void
cairo-push-group (cairo-t *cr) 

")
(define (cairo-push-group-with-content)
"void
cairo-push-group-with-content (cairo-t *cr,
                               cairo-content-t content) 
")
(define (cairo-pop-group)
"cairo-pattern-t *
cairo-pop-group (cairo-t *cr) 

")
(define (cairo-pop-group-to-source)
"void
cairo-pop-group-to-source (cairo-t *cr) 

")
(define (cairo-get-group-target)
"cairo-surface-t *
cairo-get-group-target (cairo-t *cr) 

")
(define (cairo-set-source-rgb)
"void
cairo-set-source-rgb (cairo-t *cr,
                      double red,
")
(define (cairo-set-source-rgba)
"void
cairo-set-source-rgba (cairo-t *cr,
                       double red,
")
(define (cairo-set-source)
"void
cairo-set-source (cairo-t *cr,
                  cairo-pattern-t *source) 
")
(define (cairo-set-source-surface)
"void
cairo-set-source-surface (cairo-t *cr,
                          cairo-surface-t *surface,
")
(define (cairo-get-source)
"cairo-pattern-t *
cairo-get-source (cairo-t *cr) 

")
(define (cairo-set-antialias)
"void
cairo-set-antialias (cairo-t *cr,
                     cairo-antialias-t antialias) 
")
(define (cairo-get-antialias)
"cairo-antialias-t
cairo-get-antialias (cairo-t *cr) 

")
(define (cairo-set-dash)
"void
cairo-set-dash (cairo-t *cr,
                const double *dashes,
")
(define (cairo-get-dash-count)
"int
cairo-get-dash-count (cairo-t *cr) 

")
(define (cairo-get-dash)
"void
cairo-get-dash (cairo-t *cr,
                double *dashes,
")
(define (cairo-set-fill-rule)
"void
cairo-set-fill-rule (cairo-t *cr,
                     cairo-fill-rule-t fill-rule) 
")
(define (cairo-get-fill-rule)
"cairo-fill-rule-t
cairo-get-fill-rule (cairo-t *cr) 

")
(define (cairo-set-line-cap)
"void
cairo-set-line-cap (cairo-t *cr,
                    cairo-line-cap-t line-cap) 
")
(define (cairo-get-line-cap)
"cairo-line-cap-t
cairo-get-line-cap (cairo-t *cr) 

")
(define (cairo-set-line-join)
"void
cairo-set-line-join (cairo-t *cr,
                     cairo-line-join-t line-join) 
")
(define (cairo-get-line-join)
"cairo-line-join-t
cairo-get-line-join (cairo-t *cr) 

")
(define (cairo-set-line-width)
"void
cairo-set-line-width (cairo-t *cr,
                      double width) 
")
(define (cairo-get-line-width)
"double
cairo-get-line-width (cairo-t *cr) 

")
(define (cairo-set-miter-limit)
"void
cairo-set-miter-limit (cairo-t *cr,
                       double limit) 
")
(define (cairo-get-miter-limit)
"double
cairo-get-miter-limit (cairo-t *cr) 

")
(define (cairo-set-operator)
"void
cairo-set-operator (cairo-t *cr,
                    cairo-operator-t op) 
")
(define (cairo-get-operator)
"cairo-operator-t
cairo-get-operator (cairo-t *cr) 

")
(define (cairo-set-tolerance)
"void
cairo-set-tolerance (cairo-t *cr,
                     double tolerance) 
")
(define (cairo-get-tolerance)
"double
cairo-get-tolerance (cairo-t *cr) 

")
(define (cairo-clip)
"void
cairo-clip (cairo-t *cr) 

")
(define (cairo-clip-preserve)
"void
cairo-clip-preserve (cairo-t *cr) 

")
(define (cairo-clip-extents)
"void
cairo-clip-extents (cairo-t *cr,
                    double *x1,
")
(define (cairo-in-clip)
"cairo-bool-t
cairo-in-clip (cairo-t *cr,
               double x,
")
(define (cairo-reset-clip)
"void
cairo-reset-clip (cairo-t *cr) 

")
(define (cairo-rectangle-list-destroy)
"void
cairo-rectangle-list-destroy (cairo-rectangle-list-t *rectangle-list) 

")
(define (cairo-copy-clip-rectangle-list)
"cairo-rectangle-list-t *
cairo-copy-clip-rectangle-list (cairo-t *cr) 

")
(define (cairo-fill)
"void
cairo-fill (cairo-t *cr) 

")
(define (cairo-fill-preserve)
"void
cairo-fill-preserve (cairo-t *cr) 

")
(define (cairo-fill-extents)
"void
cairo-fill-extents (cairo-t *cr,
                    double *x1,
")
(define (cairo-in-fill)
"cairo-bool-t
cairo-in-fill (cairo-t *cr,
               double x,
")
(define (cairo-mask)
"void
cairo-mask (cairo-t *cr,
            cairo-pattern-t *pattern) 
")
(define (cairo-mask-surface)
"void
cairo-mask-surface (cairo-t *cr,
                    cairo-surface-t *surface,
")
(define (cairo-paint)
"void
cairo-paint (cairo-t *cr) 

")
(define (cairo-paint-with-alpha)
"void
cairo-paint-with-alpha (cairo-t *cr,
                        double alpha) 
")
(define (cairo-stroke)
"void
cairo-stroke (cairo-t *cr) 

")
(define (cairo-stroke-preserve)
"void
cairo-stroke-preserve (cairo-t *cr) 

")
(define (cairo-stroke-extents)
"void
cairo-stroke-extents (cairo-t *cr,
                      double *x1,
")
(define (cairo-in-stroke)
"cairo-bool-t
cairo-in-stroke (cairo-t *cr,
                 double x,
")
(define (cairo-copy-page)
"void
cairo-copy-page (cairo-t *cr) 

")
(define (cairo-show-page)
"void
cairo-show-page (cairo-t *cr) 

")
(define (cairo-get-reference-count)
"unsigned int
cairo-get-reference-count (cairo-t *cr) 

")
(define (cairo-set-user-data)
"cairo-status-t
cairo-set-user-data (cairo-t *cr,
                     const cairo-user-data-key-t *key,
")
(define (cairo-get-user-data)
"void *
cairo-get-user-data (cairo-t *cr,
                     const cairo-user-data-key-t *key) 
")
(define (cairo-set-hairline)
"void
cairo-set-hairline (cairo-t *cr,
                    cairo-bool-t set-hairline) 
")
(define (cairo-get-hairline)
"cairo-bool-t
cairo-get-hairline (cairo-t *cr) 

")
(define (cairo-t)
"typedef struct -cairo cairo-t 

")
(define (enum cairo-antialias-t)
"
")
(define (enum cairo-fill-rule-t)
"
")
(define (enum cairo-line-cap-t)
"
")
(define (enum cairo-line-join-t)
"
")
(define (enum cairo-operator-t)
"
")
(define (cairo-rectangle-t)
"typedef struct {
    double x, y, width, height 
} cairo-rectangle-t 
")
(define (cairo-rectangle-list-t)
"typedef struct {
    cairo-status-t     status 
    cairo-rectangle-t *rectangles 
")
