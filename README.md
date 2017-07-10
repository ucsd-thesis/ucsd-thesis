UCSD Doctoral Dissertation LaTeX Class
======================================
https://github.com/ucsd-thesis/ucsd-thesis

Contents
--------

This folder should contain:

* **template.tex**             Primary Driver File
* **template_frontmatter.tex** Where the title, abstract, etc. are held.
* **ucsd.cls**                 LaTeX class file
* **uct10.clo**                Font files associated to LaTeX class file
* **uct11.clo**
* **uct12.clo**

Instructions
------------

Download the files: https://github.com/ucsd-thesis/ucsd-thesis/archive/master.zip

Copy all of the above files to the directory in which you plan to work.
Look over `template.tex` to get started. If you choose to rename the tex files,
update the `\include{template_frontmatter}` line correspondingly.

Latex code can be added directly to `template.tex`. 
A common alternate strategy is to include a files for each of the chapters
(e.g. `chapter1.tex`). These can then be included in the main file with the command

```tex
\include{chapter1}
```

For more information go to the [project wiki page][1].

[1]: http://code.google.com/p/ucsd-thesis/wiki/GettingStarted


Warnings
--------
This template has not endorced by OGS or any other official entity.
The official formatting guide can be obtained from
[OGS](http://grad.ucsd.edu/_files/academic-affairs/Dissertations_Theses_Formatting_Manual.pdf).

No guaranty is made that this LaTeX class conforms to the official UCSD guidelines.
Make sure that you check the final document against the Formatting Manual.

That being said, this class has been routinely used for successful
publication of doctoral theses.

Let us know if you submit a thesis using this package.


Known Issues
------------

Currently only the 12pt size conforms to the UCSD requirements.
The 10pt and 11pt options make the footnote fonts too small.


Help/Contact
------------

If you need help try the [ucsd-thesis google group][2].

[2]: http://groups.google.com/group/ucsd-thesis


Bugs
----

Please submit bug reports on [github][3].

Older bug reports can be accessed from [Google Code][4].

[3]: https://github.com/ucsd-thesis/ucsd-thesis/issues
[4]: http://code.google.com/p/ucsd-thesis/issues/list

