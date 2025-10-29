


# Parsing c2ffi output

c2ffi

```
c2ffi /usr/include/cairo/cairo.h
```

had a go at trying understand output of c2ffi

```
> node
.load h
go()
dump()
```

most stuff is okay as long as not pointers to functions, structs are tricky, 
plain pointer , int, double ,float ,unsigned-long and like are easy

we wrote something in javascript 


# Parsing documentation


```
function read(){
 var procs = []
 var all = ""
 var col = document.getElementsByClassName("refsect2")
 for (i = 0 ; i < col.length ; i ++){
   var str = col[i].innerText
   var lines = str.split(/\n/g)
   var title = lines[0]
   /* remove last 3 chars from title */
   if (title[title.length-1] === ')') { title = title.substring(0,title.length-1) }
   if (title[title.length-1] === '(') { title = title.substring(0,title.length-1) }
   if (title[title.length-1] === '_') { title = title.substring(0,title.length-1) }
   if (/\s/.test(title[title.length-1])) {title = title.substring(0,title.length-1) }
   if (true) { console.log("{" + title + "}") } 
   var inner = "\n(define (" + title + ")\n\"" 
   for (j= 1 ; j < Math.min(lines.length, 4); j++){
    var line = lines[j]
	line = line.replace(/"/g, '\"')
	if (line == "") { j = lines.length } /* escape loop */
    inner += line + "\n" 
   }
   inner += "\"\)"
   all += inner
 }
 return all
}
var s = read()
var s2 = s.replace(/\;/g ,' ')
var s3 = s2.replace(/\_/g, '-')
```

ultimately at end of day documentation on a project will not be in the source code because its too 
tricky to get everything working , then write about how it works , 
so most people just get it working and documentation says look at source code , no more





```
/* var s4 = s3.replace(/\,/g, ' ') */
```



=========================






<<<<<<<<< HISTORy >>>>>>>>


   title = title.replace('(','')
   title = title.replace(')','')
   title = title.replace(/.*_/,'') /* remove last _ */

function read(){
 var procs = []
 var all = ""
 var col = document.getElementsByClassName("refsect2")
 for (i = 0 ; i < col.length ; i ++){
   var str = col[i].innerText
   var lines = str.split(/\n/g)
   var title = lines[0]
   /* remove last 3 chars from title */
   if (title[title.length-1] === ')') { title = title.substring(0,title.length-1) }
   if (title[title.length-1] === '(') { title = title.substring(0,title.length-1) }
   if (title[title.length-1] === '_') { title = title.substring(0,title.length-1) }
   if (title[title.length-1] === ' ') { title = title.substring(0,title.length-1) }   
   console.log(title);
   var inner = "\n(define (" + title + ")\n\"" + lines[1] + "\n" + lines[2] + "\")\n" 
   /*
   for (j = 1 ; j < lines.length ; j ++){
     
	 inner += `${lines[j].replace(/\"/g, '\"')}`
   }
   inner += ")" 
   */
   all += inner
 }
 return all
}
var s = read()
var s2 = s.replace(/\;/g ,' ')
var s3 = s2.replace(/\_/g, '-')
/* var s4 = s3.replace(/\,/g, ' ') */
```

   
function read(){
 var str = ""
 var col = document.getElementsByClassName("refsect2")
 for (i = 0 ; i < col.length ; i ++){
   str += col[i].innerText
   str += "\n==========================================================\n"
 }
 return str
}
var str = read()
procs = str.split('==========================================================')
proc0lines = procs[0].split(/\n/g)

=========================

var e0 = col[0]
var rt0 = e.getElementsByClassName('returnvalue')
var returnValue0 = rt[0].innerText
var children0 = e0.children

var e1 = col[1]
var children1 = e1.children
lines = str.split(/\r\n|\r|\n/g)









<span class="returnvalue">cairo_t</span>

<pre class="programlisting"><a class="link" href="cairo-cairo-t.html#cairo-t" title="cairo_t"><span class="returnvalue">cairo_t</span></a>&nbsp;*
cairo_create (<em class="parameter"><code><a class="link" href="cairo-cairo-surface-t.html#cairo-surface-t" title="cairo_surface_t"><span class="type">cairo_surface_t</span></a> *target</code></em>);</pre>




<div class="refsect2">
<a name="cairo-create"></a><h3>cairo_create&nbsp;()</h3>
<pre class="programlisting"><a class="link" href="cairo-cairo-t.html#cairo-t" title="cairo_t"><span class="returnvalue">cairo_t</span></a>&nbsp;*
cairo_create (<em class="parameter"><code><a class="link" href="cairo-cairo-surface-t.html#cairo-surface-t" title="cairo_surface_t"><span class="type">cairo_surface_t</span></a> *target</code></em>);</pre>
<p>Creates a new <a class="link" href="cairo-cairo-t.html#cairo-t" title="cairo_t"><span class="type">cairo_t</span></a> with all graphics state parameters set to
default values and with <em class="parameter"><code>target</code></em>
 as a target surface. The target
surface should be constructed with a backend-specific function such
as <a class="link" href="cairo-Image-Surfaces.html#cairo-image-surface-create" title="cairo_image_surface_create&nbsp;()"><code class="function">cairo_image_surface_create()</code></a> (or any other
<code class="function">cairo_<span class="emphasis"><em>backend</em></span>_surface_create()</code>
variant).</p>
<p>This function references <em class="parameter"><code>target</code></em>
, so you can immediately
call <a class="link" href="cairo-cairo-surface-t.html#cairo-surface-destroy" title="cairo_surface_destroy&nbsp;()"><code class="function">cairo_surface_destroy()</code></a> on it if you don't need to
maintain a separate reference to it.</p>
<div class="refsect3">
<a name="cairo-create.parameters"></a><h4>Parameters</h4>
<div class="informaltable"><table class="informaltable" width="100%" border="0">
<colgroup>
<col width="150px" class="parameters_name">
<col class="parameters_description">
<col width="200px" class="parameters_annotations">
</colgroup>
<tbody><tr>
<td class="parameter_name"><p>target</p></td>
<td class="parameter_description"><p>target surface for the context</p></td>
<td class="parameter_annotations">&nbsp;</td>
</tr></tbody>
</table></div>
</div>
<div class="refsect3">
<a name="cairo-create.returns"></a><h4>Returns</h4>
<p> a newly allocated <a class="link" href="cairo-cairo-t.html#cairo-t" title="cairo_t"><span class="type">cairo_t</span></a> with a reference
count of 1. The initial reference count should be released
with <a class="link" href="cairo-cairo-t.html#cairo-destroy" title="cairo_destroy&nbsp;()"><code class="function">cairo_destroy()</code></a> when you are done using the <a class="link" href="cairo-cairo-t.html#cairo-t" title="cairo_t"><span class="type">cairo_t</span></a>.
This function never returns <code class="literal">NULL</code>. If memory cannot be
allocated, a special <a class="link" href="cairo-cairo-t.html#cairo-t" title="cairo_t"><span class="type">cairo_t</span></a> object will be returned on
which <a class="link" href="cairo-cairo-t.html#cairo-status" title="cairo_status&nbsp;()"><code class="function">cairo_status()</code></a> returns <a class="link" href="cairo-Error-handling.html#CAIRO-STATUS-NO-MEMORY:CAPS"><code class="literal">CAIRO_STATUS_NO_MEMORY</code></a>. If
you attempt to target a surface which does not support
writing (such as <span class="type">cairo_mime_surface_t</span>) then a
<a class="link" href="cairo-Error-handling.html#CAIRO-STATUS-WRITE-ERROR:CAPS"><code class="literal">CAIRO_STATUS_WRITE_ERROR</code></a> will be raised.  You can use this
object normally, but no drawing will be done.</p>
</div>
<p class="since">Since: <a class="link" href="api-index-1-0.html#api-index-1.0">1.0</a></p>
</div>


# Cairo 

cairo is a drawing library

extract c procedures from cairo documentation 

https://www.cairographics.org/manual/

write initial parsing javascript code 

https://www.cairographics.org/manual/cairo-cairo-t.html



gets a HTML Collection
col.length 
67


e.childNodes
e.innerHTML


var col = document.getElementsByClassName("refsect2")
col[0].innerText
=========================
cairo_create ()
cairo_t *
cairo_create (cairo_surface_t *target);

