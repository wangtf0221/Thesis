1,11c1,2
< % BibTeX `seglike' bibliography style (29-Apr-08 version)
< % Adapted from the `apalike' style, 24-jan-88 version; for BibTeX version 0.99a.
< % Copyright (C) 2007, 2008 Soc. of Expl. Geophys. & Joerg Schleicher,
< % all rights reserved.
< % Copying of this file is allowed, provided that if you make any changes at all
< % you name it something other than `seglike.bst' or 'seg'bst'.
< % This restriction helps ensure that all copies are identical.
< % Differences between `apalike' and `alpha' are generally heralded by a `%'.
< % Differences between this style and `apalike' are generally heralded by a `%%'.
< % The file btxbst.doc has the documentation for alpha.bst.
< % This style works with the natbib package.
---
> % BibTeX standard bibliography style `tongjibib.bst' derived from `unsrt'
> % This file is part of `thuthesis' package.
13,64c4
< % History:
< %   15-sep-86   (SK,OP) Original 'apalike' version,
< %                       by Susan King and Oren Patashnik.
< %   10-nov-86   (OP)    Truncated the sort.key$ string to the correct length
< %                       in bib.sort.order to eliminate error message.
< %   24-jan-88   (OP)    Updated for BibTeX version 0.99a, from alpha.bst 0.99a;
< %                       apalike now sorts by author, then year, then title;
< %   12-aug-04   (JS)    First adapted 'seglike' version, by Joerg Schleicher.
< %                       Parts from 'seg.bst' (v. 16-apr-94) by Martin Karrenbach
< %                       & from 'geophys.bst' (v. 30-mar-04) by Joerg Schleicher.
< %                       'seglike' follows the SEG style according to the
< %                       'Instructions to Authors', Geophysics, Jan/Feb 2004.
< %   29-dec-04   (JS)    Abbr. tp for Tectonophysics added, and format.author
< %                       modified to correct name format
< %   09-aug-05   (JS)    Corrections of inproceedings: use of booktitle
< %                       (proceedingstitle has priority), priority of meeting
< %                       over type, no case change of booktitle and meeting
< %                       Rules updated to follow the SEG style according to the
< %                       'Instructions to Authors', Geophysics, Jan/Feb 2005.
< %   03-oct-05   (JS)    Additional field segeditor in book and inbook
< %   07-jan-06   (JS)    Reorganized use of meetingnr, meeting, organization,
< %                       proceedingstitle as an higher-priority alternative to
< %                       booktitle in inproceedings
< %   13-oct-06   (JS)    Added comma after three-em dash representing identical
< %                       author names
< %   08-mar-07   (JS)    Period changed to comma before publisher in incollection
< %                       comma added after "ed." where editor instead of author
< %                       is used, resulting double comma eliminated after editor
< %                       in incollection
< %   04-sep-07   (JS)    Comma added after first author also for two authors;
< %                       edition in book right after title; note in parentheses;
< %                       series, number format in book and inbook corrected;
< %                       segeditor in parentheses
< %   29-apr-08   (JS)    Changes in inproceedings: address suppressed,
< %                       priority of proceedingstitle over booktitle, if no
< %                       proceedingstitle is present, use always booktitle,
< %                       organization after proceedingstitle or booktitle;
< %                       in book: segeditor replaced by bookeditor; in inbook:
< %                       chapter used as paper title, title as book title; in
< %                       inbook and incollection: pages after publisher, field
< %                       bookeditor introduced; in book, inbook, incollection,
< %                       inproceedings and proceedings: publisher before volume
< %   17-jun-08   (JS)    Comma added before and in two-author references
< %   17-jul-09   (JS)    Last changes: added earticle and webpage fields in
< %                       accordance with 'Instructions to Authors', Geophysics, 
< %                       Jan/Feb 2009. Field earticle has entries doi, url,
< %                       and accessed (or lastchecked for compatibility with
< %                       other solutions) in addition to all conventional
< %                       article entries. Field webpage has entries author,
< %                       year, title, url, accessed/lastchecked, and note.
< %                       Default for accessed/lastchecked is \today.
< %                       THIS VERSION DOES NOT WORK WITH BIBTEX 0.98i.
---
> % $Id: tongjibib.bst 146 2009-05-13 16:22:48Z Gareth $
67,69c7
< %%                      new entry for earticle and webpage
<   { accessed
<     address
---
>   { address
73,74d10
< %%                      new entry for earticle
<     doi
81,85c17,18
< %%                      new entry for earticle and webpage
<     lastchecked
< %    month		not used in apalike  %% nor seglike.bst
<     meeting		%% introduced in accordance with SEG's seg.bst	
<     meetingnr		%% introduced in adaptation of geophys.bst	
---
>     lang
>     month
88,92d20
< %%			since number is suppressed in normal journal
< %%			citations, we need a new entry for Geophysics with
< %%			its new page number system and for magazines the
< %%			issues of which start with page number 1 each
<     issue
95d22
<     proceedingstitle	%% only in seglike.bst
98,101d24
< %%                      since standard bib styles don't allow for both author
< %%                      and editor fields in book, inbook, and incollection
< %%                      we need an additional field, bookeditor
<     bookeditor
105,106d27
< %%                      new entry for earticle and webpage
<     url
108a30
>     url
111,112c33,47
<   { label extra.label sort.label
<     dash.label} 			%% addition for seglike.bst
---
>   { label }
> 
> INTEGERS { output.state before.all mid.sentence after.sentence after.block }
> 
> FUNCTION {not}
> {   { #0 }
>     { #1 }
>   if$
> }
> 
> FUNCTION {and}
> {   'skip$
>     { pop$ #0 }
>   if$
> }
114,115c49,53
< INTEGERS { output.state before.all mid.sentence after.sentence after.block
<            set.colon} 			%% addition for seglike.bst
---
> FUNCTION {or}
> {   { pop$ #1 }
>     'skip$
>   if$
> }
122d59
<   #4 'set.colon :=
132,144c69,77
< 	{ add.period$ write$
< 	  newline$
< 	  "\newblock " write$
< 	}
< 	{ output.state set.colon =
<           { ": " * write$ }
< 	  { output.state before.all =
< 	      'write$
< 	      { add.period$ " " * write$ }
< 	      if$
< 	    }
< 	  if$
< 	}
---
>     { add.period$ write$
>       newline$
>       "\newblock " write$
>     }
>     { output.state before.all =
>         'write$
>         { add.period$ " " * write$ }
>       if$
>     }
151a85,148
> FUNCTION {output.year}
> { 't :=
>   number empty$
>   volume empty$
>   and
>     { add.period$ write$ }
>     { ", " * write$ }
>   if$
>   t
> }
> 
> STRINGS {z}
> FUNCTION {remove.dots}
> { 'z :=
>   ""
>   { z empty$ not}
>   { z #1 #1 substring$
>     z #2 global.max$ substring$ 'z :=
>     duplicate$ "." = 'pop$
>       { * }
>     if$
>   }
>   while$
>   %z
> }
> 
> FUNCTION {bibinfo.check}
> { swap$
>   duplicate$ missing$
>     {
>       pop$ pop$
>       ""
>     }
>     { duplicate$ empty$
>         {
>           swap$ pop$
>         }
>         { swap$
>           pop$
>         }
>       if$
>     }
>   if$
> }
> 
> FUNCTION {format.note}
> {
>  note empty$
>     { "" }
>     { note #1 #1 substring$
>       duplicate$ "{" =
>         'skip$
>         { output.state mid.sentence =
>           { "l" }
>           { "u" }
>         if$
>         change.case$
>         }
>       if$
>       note #2 global.max$ substring$ * "note" bibinfo.check
>     }
>   if$
> }
> 
167,182d163
< %					apalike needs this function because
< %					the year has special punctuation;
< %					apalike ignores the month
< FUNCTION {output.year.check}
< { year empty$
<     { "empty year in " cite$ * warning$ }
<     { write$
< %%      " (" year * extra.label * ")" *  
< %%                                      changed to SEG style (no parentheses)
<        " " year * extra.label *
< 
<       mid.sentence 'output.state :=
<     }
<   if$
< }
< 
185,187c166
<   "\bibitem[" write$
<   label write$
<   "]{" write$
---
>   "\bibitem{" write$
196,197c175,180
< { add.period$
<   write$
---
> { duplicate$ empty$
>     'pop$
>     'write$
>   if$
>   newline$
>   "\tongjidot" write$
201,206c184,197
< FUNCTION {new.colon}
< { output.state before.all =
<     'skip$
<     { set.colon 'output.state := }
<   if$
< }
---
> % FUNCTION {fin.entry}
> % { add.period$   
> %   write$
> %   %remove.dots
> %   newline$
> % }
> 
> % FUNCTION {fin.entry}
> % { duplicate$ empty$
> %     'pop$
> %     'write$
> %   if$
> %   newline$
> % }
219,220c210,211
< 	'skip$
< 	{ after.sentence 'output.state := }
---
>     'skip$
>     { after.sentence 'output.state := }
226,228c217,221
< FUNCTION {not}
< {   { #0 }
<     { #1 }
---
> 
> FUNCTION {new.block.checka}
> { empty$
>     'skip$
>     'new.block
232,234c225,230
< FUNCTION {and}
< {   'skip$
<     { pop$ #0 }
---
> FUNCTION {new.block.checkb}
> { empty$
>   swap$ empty$
>   and
>     'skip$
>     'new.block
238,239c234,235
< FUNCTION {or}
< {   { pop$ #1 }
---
> FUNCTION {new.sentence.checka}
> { empty$
240a237
>     'new.sentence
244c241
< FUNCTION {new.block.checkb}
---
> FUNCTION {new.sentence.checkb}
249c246
<     'new.block
---
>     'new.sentence
263,264c260
< %%    { "{\em " swap$ * "}" * }			%% emphasize is bold
<     { "{\bf " swap$ * "}" * }			%% in seglike.bst
---
>     { "{\em " swap$ * "}" * }
270,298c266,277
< FUNCTION {format.names.old}
< { 's :=
<   #1 'nameptr :=
<   s num.names$ 'numnames :=
<   numnames 'namesleft :=
<     { namesleft #0 > }
<     { s nameptr "{vv~}{ll}{, jj}{, f.}" format.name$ 't :=   % last name first
<       nameptr #1 >
< 	{ namesleft #1 >
< 	    { ", " * t * }
<  	   {
< %%		numnames #2 >             %% always add comma after first author
< 		{ "," * }
< %%		'skip$
< %%	      if$
< 	      t "others" =
< 		{ " et~al." * }
< 		{ " and " * t * }
< 	      if$
< 	    }
< 	  if$
< 	}
< 	't
<       if$
<       nameptr #1 + 'nameptr :=
<       namesleft #1 - 'namesleft :=
<     }
<   while$
< }
---
> FUNCTION {bbl.etal}
> { "et~al." }
> 
> FUNCTION {bbl.cn.etal}
> { "等." }
> 
> FUNCTION {format.lang}
> { lang empty$
>     'skip$
>     'skip$
>   if$
>  }
306,309c285,291
<     { numnames namesleft =
<         { s nameptr "{vv~}{ll}{, jj}{, f.}" format.name$ 't := }  % last name first 
<         { s nameptr "{f. }{vv~}{ll}{, jj}" format.name$ 't := }  % first name first
<       if$
---
>     { s nameptr
>       %"{ff }{ll}"
>       "{ll }{f{~}}"    
>       format.name$
>       remove.dots
>       %bibinfo bibinfo.check
>       't :=
311,324c293,337
< 	{ namesleft #1 >
< 	    { ", " * t * }
< 	    { numnames #1 >
< 		{ "," * }
< 		'skip$
< 	      if$
< 	      t "others" =
< 		{ " et~al." * }
< 		{ " and " * t * }
< 	      if$
< 	    }
< 	  if$
< 	}
< 	't
---
>         {
>           nameptr #3
>           #1 + =
>           numnames #3
>           > and
>             { "others" 't :=
>               #1 'namesleft := }
>             'skip$
>           if$
>           namesleft #1 >
>             { ", " * t * }
>             { numnames #2 >
>               { "" * }
>               'skip$
>               if$
>               s nameptr "{ll}" format.name$ duplicate$ "others" =
>                 { 't := }
>                 { pop$ }
>               if$
>               t "others" =
>                 {
>                   lang empty$
>                     { ", " * bbl.etal * }
>                     { lang "zh" =
>                        { ", " * bbl.cn.etal * }
>                        'skip$
>                       if$
>                     }
>                   if$
>                 }
>                 {
>                   lang empty$
>                     { ", " * t * }
>                     { lang "zh" =
>                        { ", " * t * }
>                        'skip$                   
>                      if$
>                     }
>                   if$
>                 } 
>               if$
>             }
>           if$
>         }
>         't
335,341c348
<     { dash.label "-"  =
<         { "--------," }
<         { author format.names
<          ", " *
<         }
<       if$
<     }
---
>     { author format.names }
345,348c352,355
< FUNCTION {format.key}			% this function is just for apalike
< { empty$
<     { key field.or.null }
<     { "" }
---
> FUNCTION {editors.names}
> { lang empty$
>     { ", (eds.)" }
>     { ", 编" }
352,366d358
< FUNCTION {format.bookeditors.book}       %% this function is just for seglike
< { bookeditor empty$                      %% it formats the bookeditor field
<     { "" }                              %% allowed in book and inbook
<     { " (" bookeditor format.names *
<       bookeditor num.names$ #1 >
< %%	{ ", editors" * }   
< %%	{ ", editor" * }
<         { ", eds." * }                  %% SEG style
<         { ", ed." * }                   %% SEG style
<       if$
<       ")" *
<       before.all 'output.state :=
<     }
<   if$
< }
372,377c364,368
<       editor num.names$ #1 >
< %%	{ ", editors" * }   
< %%	{ ", editor" * }
<         { ", eds.," * }                  %% SEG style
<         { ", ed.," * }                   %% SEG style
<       if$
---
>     %  editor num.names$ #1 >
>     %{ ", editors" * }
>     %{ ", editor" * }
>     %  if$
>      editors.names *
382,397c373,374
< FUNCTION {format.bookeditors}
< { bookeditor empty$
<     { "" }
<     { bookeditor format.names
<       bookeditor num.names$ #1 >
< %%	{ ", editors" * }   
< %%	{ ", editor" * }
<         { ", eds.," * }                  %% SEG style
<         { ", ed.," * }                   %% SEG style
<       if$
<     }
<   if$
< }
< 
< FUNCTION {format.chapter}
< { chapter empty$
---
> FUNCTION {format.title}
> { title empty$
399c376
<     { chapter "t" change.case$ }
---
>     { title }
403,411c380,393
< FUNCTION {format.url.access}
< { url empty$
<     { "url empty in " cite$ * warning$ }
<     { "\verb+" url * "+" * 
<       lastchecked empty$
<         { accessed empty$
<             { "" "both lastchecked and accessed empty in " cite$ * warning$ }
<             { ", accessed " * accessed * }
<           if$
---
> FUNCTION {n.dashify}
> { 't :=
>   ""
>     { t empty$ not }
>     { t #1 #1 substring$ "-" =
>     { t #1 #2 substring$ "--" = not
>         { "--" *
>           t #2 global.max$ substring$ 't :=
>         }
>         {   { t #1 #1 substring$ "-" = }
>         { "-" *
>           t #2 global.max$ substring$ 't :=
>         }
>           while$
413d394
<         { ", accessed " * lastchecked * }
416,424c397,398
<   if$
< }
< 
< FUNCTION {format.doi.access}
< { doi empty$
<     {  url empty$
<         { "" "both doi and url empty in " cite$ * warning$ }
<         { "empty doi in " cite$ * warning$ }
<       if$
---
>     { t #1 #1 substring$ *
>       t #2 global.max$ substring$ 't :=
426,431d399
<     { }
<   if$
<   lastchecked empty$
<     { accessed empty$
<         { "\today" "both lastchecked and accessed empty in " cite$ * warning$ }
<         { "accessed " accessed * }
434,443c402
<     { "accessed " lastchecked * }
<   if$
<   url empty$
<     { }
<     { "; \verb+" * url * "+" * }
<   if$
<   doi empty$
<     { }
<     {  "; \verb+http://dx.doi.org/" * doi * "+" * }
<   if$
---
>   while$
446,447c405,407
< FUNCTION {format.title}
< { title empty$
---
> FUNCTION {format.date}
> { year empty$
>     { month empty$
449,472c409,411
<     { title "t" change.case$ }
<   if$
< }
< 
< FUNCTION {n.dashify}
< { 't :=
<   ""
<     { t empty$ not }
<     { t #1 #1 substring$ "-" =
< 	{ t #1 #2 substring$ "--" = not
< 	    { "--" *
< 	      t #2 global.max$ substring$ 't :=
< 	    }
< 	    {   { t #1 #1 substring$ "-" = }
< 		{ "-" *
< 		  t #2 global.max$ substring$ 't :=
< 		}
< 	      while$
< 	    }
< 	  if$
< 	}
< 	{ t #1 #1 substring$ *
< 	  t #2 global.max$ substring$ 't :=
< 	}
---
>     { "there's a month but no year in " cite$ * warning$
>       month
>     }
475c414,419
<   while$
---
>     { month empty$
>     'year
>     { month ", " * year * }
>       if$
>     }
>   if$
479c423
< { title emphasize
---
> { title %emphasize
500,504c444,447
<     { series empty$
<         { ", " * volume emphasize * }
<         { "volume" volume emphasize tie.or.space.connect
< 	  " {\it of} " * series *
<         }
---
>     { "volume" volume tie.or.space.connect
>       series empty$
>     'skip$
>     { " of " * series emphasize * }
514,527c457,467
< 	{ series field.or.null }
<  	{
< %	  output.state mid.sentence =
< %	    { "number" }
< %	    { "Number" }
< %	  if$
< %	  number tie.or.space.connect
< 	  series empty$
< 	    { "there's a number but no series in " cite$ * warning$ }
< %	    { " {\it in} " * series * }
< %       Replaced by
< 	    { series ", No.~" * number * }
< 	  if$
< 	}
---
>     { series field.or.null }
>     { output.state mid.sentence =
>         { "number" }
>         { "Number" }
>       if$
>       number tie.or.space.connect
>       series empty$
>         { "there's a number but no series in " cite$ * warning$ }
>         { " in " * series * }
>       if$
>     }
538,539c478,479
< 	{ edition "l" change.case$ " ed." * }
< 	{ edition "t" change.case$ " ed." * }
---
>     { edition "l" change.case$ " ed." * }
>     { edition "t" change.case$ " ed." * }
544a485,493
> 
> FUNCTION {format.url}
> { url empty$
>     { "" }
>     { new.block " {\url{" url * "}}" * }
>   if$
> }
> 
> 
559,560c508,509
< 	{ #1 'multiresult := }
< 	{ t #2 global.max$ substring$ 't := }
---
>     { #1 'multiresult := }
>     { t #2 global.max$ substring$ 't := }
571,572c520,521
< 	{ "" pages n.dashify tie.or.space.connect }
< 	{ "" pages tie.or.space.connect }
---
>     { "" pages n.dashify tie.or.space.connect }
>     { "" pages tie.or.space.connect }
578,579d526
< %%					format.vol.num.pages from seg.bst
< %%					number changed to issue
581,582c528,529
< { volume field.or.null emphasize
<   issue empty$
---
> { volume field.or.null
>   number empty$
584c531
<     { ", no. " issue *  *
---
>     { "(" number * ")" * *
586,587c533,534
<         { "there's a number but no volume in " cite$ * warning$ }
<         'skip$
---
>     { "there's a number but no volume in " cite$ * warning$ }
>     'skip$
594,595c541,542
<         { pop$ format.pages }
<         { ", " * pages n.dashify * }
---
>     { pop$ format.pages }
>     { ":" * pages n.dashify * }
603c550
<     'format.pages
---
>     { "" }
605,612c552,559
< 	{ "chapter" }
< 	{ type "l" change.case$ }
<       if$
<       chapter tie.or.space.connect
<       pages empty$
< 	'skip$
< 	{ ", " * format.pages * }
<       if$
---
>       { "chapter" }
>       { type "l" change.case$ }
>     if$
>     chapter tie.or.space.connect
>     pages empty$
>       'skip$
>       { ", " * format.pages * }
>     if$
616a564,570
> FUNCTION {collection.in}
> { lang empty$
>     { "In: " }
>     { "见: " }
>   if$
> }
> 
620,625c574,584
<     { bookeditor empty$
< %	{ "In " booktitle emphasize * }
< %	{ "In " format.editors * ", " * booktitle emphasize * }
< %%			%% modified according to seg.bst
<         { "{\it in} " booktitle * }
<         { "{\it in} " format.bookeditors * " " * booktitle * }
---
>     { editor empty$
>     { lang empty$
>         { "Proceedings of " booktitle * }
>         { " " booktitle * }
>       if$
>     }
>     { lang empty$
>         { collection.in format.editors * ". Proceedings of " * booktitle * }
>         { collection.in format.editors * ". " * booktitle * }
>       if$
>     }
631,641c590,595
< FUNCTION {format.in.ed.title}                   %% used in inbook
< { title empty$
<     { "" }
<     { bookeditor empty$
< %	{ "In " booktitle emphasize * }
< %	{ "In " format.editors * ", " * booktitle emphasize * }
< %%			%% modified according to seg.bst
<         { "{\it in} " title * }
<         { "{\it in} " format.bookeditors * " " * title * }
<       if$
<     }
---
> FUNCTION {empty.misc.check}
> { author empty$ title empty$ howpublished empty$
>   month empty$ year empty$ note empty$
>   and and and and and
>     { "all relevant fields are empty in " cite$ * warning$ }
>     'skip$
666c620,630
< { "In"							% this is for apalike
---
> { key empty$
>     { journal empty$
>     { "need key or journal for " cite$ * " to crossref " * crossref *
>       warning$
>       ""
>     }
>     { "In {\em " journal * "\/}" * }
>       if$
>     }
>     { "In " key * }
>   if$
669a634,650
> FUNCTION {format.crossref.editor}
> { editor #1 "{ll }{f{~}}" format.name$
>   editor num.names$ duplicate$
>   #2 >
>     { pop$ " et~al." * }
>     { #2 <
>     'skip$
>     { editor #2 "{ll }{f{~}}" format.name$ "others" =
>         { " et~al." * }
>         { " and " * editor #2 "{ll }{f{~}}" format.name$ * }
>       if$
>     }
>       if$
>     }
>   if$
> }
> 
679c660,677
<   "\cite{" * crossref * "}" *				% this is for apalike
---
>   editor empty$
>   editor field.or.null author field.or.null =
>   or
>     { key empty$
>     { series empty$
>         { "need editor, key, or series for " cite$ * " to crossref " *
>           crossref * warning$
>           "" *
>         }
>         { "{\em " * series * "\/}" * }
>       if$
>     }
>     { key * }
>       if$
>     }
>     { format.crossref.editor * }
>   if$
>   " \cite{" * crossref * "}" *
683c681,697
< { "In"							% this is for apalike
---
> { editor empty$
>   editor field.or.null author field.or.null =
>   or
>     { key empty$
>     { booktitle empty$
>         { "need editor, key, or booktitle for " cite$ * " to crossref " *
>           crossref * warning$
>           ""
>         }
>         { "In {\em " booktitle * "\/}" * }
>       if$
>     }
>     { "In " key * }
>       if$
>     }
>     { "In " format.crossref.editor * }
>   if$
687,699c701,712
< %%						%% from geophys.bst
< INTEGERS { index }
< 
< FUNCTION {number.to.counter}
< { 't :=
<   t text.length$ 'index :=
<   t index #1 substring$ "1" =
<     { t "st " * }
<     { t index #1 substring$ "2" =
<       { t "nd " * }
<       { t index #1 substring$ "3" =
<         { t "rd " * }
<         { t "th " * }
---
> FUNCTION {format.address.publisher}
> { address empty$
>     { publisher empty$
>     { "" }
>     { "there's a publisher but no address in " cite$ * warning$
>       publisher
>     }
>       if$
>     }
>     { publisher empty$
>     'address
>     { address ": " * publisher * }
701,702d713
<       }
<     if$
707,712c718,730
< %%						%% from geophys.bst
< FUNCTION {format.booktitle.pr}                  %% modified to give booktitle
< { booktitle empty$                              %% priority over type
<     'skip$
<     { pop$
<       booktitle                                 %% and no change of case
---
> FUNCTION {format.address.school}
> { address empty$
>     { school empty$
>     { "" }
>     { "there's a school but no address in " cite$ * warning$
>       school
>     }
>       if$
>     }
>     { school empty$
>     'address
>     { address ": " * school * }
>       if$
717,723d734
< %%						%% from geophys.bst
< FUNCTION {format.booktitle}
< { booktitle empty$
<     { "" }
<     { booktitle "t" change.case$ }
<   if$
< }
725,753c736,741
< %%						%% Put note in parentheses
< FUNCTION {format.note}
< { note empty$
<     { "" }
<     { "(" note * ")" * }
<   if$
< }
< %%                                                  new in seglike.bst
< FUNCTION {format.meeting.seg}
< { meeting empty$                                 %% if no meeting given
<     { "Annual International Meeting" }           %% "Ann. Int. Meet."
<     { meeting                                    %% use meeting
<     }
<   if$
<   organization empty$
<     { "" * }
<     { ", " *
<       organization *
<     }
<   if$
<   proceedingstitle empty$                        %% if no proceedingstitle
<     { booktitle empty$                           %%   if no booktitle
<         { pages empty$                           %%     if no pages
<             { "" * }                             %%       nothing
<             { ", Expanded Abstracts" * }         %%     else "Exp. Abst"
<           if$
<         }
<         { ", " *                                 %%   else
<           booktitle *                            %%     use booktitle
---
> FUNCTION {format.title.type}
> { title empty$
>     { type empty$
>         { "" }
>         { "there's a type but no title in " cite$ * warning$
>           type
757,758c745,748
<     { ", " *                                     %% else
<       proceedingstitle *                         %%   use proceedingstitle
---
>     { type empty$
>         'title
>         { title ": " * type * }
>       if$
763,803c753,761
< FUNCTION {format.meeting.ad.ab}
< { pages empty$
<     { "Presented at the " }
<     { "" }
<   if$
<   meetingnr empty$                                     %% if no meetingnr given
<     { meeting empty$                                   %% and no meeting given
<         { proceedingstitle empty$
<             { booktitle empty$
<                 { "empty booktitle in " cite$ * warning$
<                   "" *
<                 }
<                 { booktitle * }                           %% use booktitle
<               if$
<             }
<             { proceedingstitle * }                        %% use proc.title
<           if$
<           organization empty$
<             { "" * }
<             { ", " *
<               organization *
<             }
<           if$
<         }
<         { format.meeting.seg * }                       %% else use meeting
<       if$                                              %% organization,
<     }                                                  %% proceedingstitle, and
<     { meetingnr number.to.counter *                    %% meetingnr (if exists)
<       format.meeting.seg *
<     }
<   if$
<   publisher empty$                                     %% no publisher given 
<     { "" * }                                           %%    do nothing
<     { ", " *                                           %% else
<     publisher *                                        %%    use publisher
<   }
<   if$
<   pages empty$
<     { "" * }
<     { "," *
<       format.pages *
---
> FUNCTION {book} 
> { output.bibitem
>   author empty$
>     { format.editors "author and editor" output.check }
>     { format.authors output.nonnull
>       crossref missing$
>     { "author and editor" editor either.or.check }
>     'skip$
>       if$
806,816c764,765
< }
< 
< FUNCTION {article}
< { output.bibitem
<   format.authors "author" output.check
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
<   format.title "title" output.check
< % new.block						%% no period
<   new.colon						%% colon instead
---
>   new.block
>   format.btitle "title" output.check
818,820c767,771
< %    { journal emphasize "journal" output.check		%% no italics
<     { journal "journal" output.check			%% for seglike
<       format.vol.num.pages output
---
>     { format.bvolume output
>       new.block
>       format.number.series output
>       %new.sentence
>       %format.address.publisher output
822,823c773,774
<     { format.article.crossref output.nonnull
<       format.pages output
---
>     { new.block
>       format.book.crossref output.nonnull
826,827c777,785
<   new.block
<   format.note output
---
>   format.edition output
>   format.address.publisher output
>   pages empty$
>     { format.date "year" output.check 
>       % new.sentence
>       % format.pages output
>     }
>     { format.date ":" * format.pages * output }
>   if$  
831c789
< FUNCTION {earticle}
---
> FUNCTION {article}
834,836c792
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   new.block
838,839c794
< % new.block						%% no period
<   new.colon						%% colon instead
---
>   new.block
841,843c796,801
< %    { journal emphasize "journal" output.check		%% no italics
<     { journal "journal" output.check			%% for seglike
<       format.vol.num.pages output
---
>     { %journal emphasize "journal" output.check
>       journal "journal" output.check
>       %format.date "year" output.check
>       %new.block
>       year output
>       format.vol.num.pages output.year
849,886d806
<   format.doi.access output
<   new.block
<   format.note output
<   fin.entry
< }
< 
< FUNCTION {book}
< { output.bibitem
<   author empty$
<     { format.editors  "author and editor" output.check
<       editor format.key output
<     }
<     { format.authors output.nonnull
<       crossref missing$                                  %% Don't allow both
<         { "author and editor" editor either.or.check }   %% author and editor
<         'skip$
<       if$
<     }
<   if$
<   output.year.check                             % special for apalike
< % new.block                                     %% no period for seglike
< %  format.btitle "title" output.check	        %% treat book titles like 
<   crossref missing$
<     { format.title "title" output.check         %%  any titles in seglike
<       format.edition output                     %% edition right after title
<       new.colon					%% colon for seglike
<       publisher "publisher" output.check
<       format.bvolume output
<       new.block
<       format.number.series output
<       format.bookeditors.book output             %% Allow bookeditor
< %      new.sentence
< %      address output				%% address suppressed
<     }
<     { new.block
<       format.book.crossref output.nonnull
<     }
<   if$
888c808
<   format.note output
---
>   format.note output  
895,897c815
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   new.block
899,900c817
< % new.block						%% no period
<   new.colon						%% colon instead
---
>   howpublished address new.block.checkb
902c819,820
< %      address output				%% address suppressed
---
>   address output
>   format.date output
904c822
<   format.note output
---
>   note output
911,913c829
<     { format.editors "author and editor" output.check
<       editor format.key output
<     }
---
>     { format.editors "author and editor" output.check }
915,917c831,833
<       crossref missing$                                  %% Don't allow both
<         { "author and editor" editor either.or.check }   %% author and editor
<         'skip$
---
>       crossref missing$
>     { "author and editor" editor either.or.check }
>     'skip$
921,924c837,838
<   output.year.check				% special for apalike
< % new.block                             	%% no period
< %  format.btitle "btitle" output.check          %% no special treatment,
<   format.chapter "chapter" output.check	        %% treat chapter as title
---
>   new.block
>   format.btitle "title" output.check
926,930c840,842
<     { format.in.ed.title "title" output.check   %% treat title as book title
<       format.edition output
<       new.colon
<       publisher "publisher" output.check
<       format.bvolume output
---
>     { format.bvolume output
>       %format.chapter.pages "chapter and pages" output.check
>       new.block
932c844,846
< %      address output				%% address suppressed
---
>       new.sentence
>       publisher "publisher" output.check
>       address output
934c848,849
<     { new.block
---
>     { format.chapter.pages "chapter and pages" output.check
>       new.block
938,940c853,858
<   format.pages output
<   new.block
<   format.note output
---
>   format.edition output
>   pages empty$
>     { format.date output }
>     { format.date ":" * format.pages * output }
>   if$
>   % format.date "." * format.pages * output
947,949c865
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   new.block
951c867
< % new.block						%% no period
---
>   new.block
954,957c870
<       format.edition output
<       new.colon
<       publisher "publisher" output.check
<       format.bvolume output
---
>       %format.bvolume output
959,961c872,880
<       format.chapter output
<       format.pages output
< %      address output				%% address suppressed
---
>       format.chapter.pages output
>       new.sentence
>       format.address.publisher output
>       %address output
>       %publisher "publisher" output.check
>       %format.edition output
>       % format.date "year" output.check
>       % format.date ". " * format.pages * output
>       format.date ":" * format.pages * output
967,968c886,887
<   new.block
<   format.note output
---
>   % new.block
>   % note output
975,977c894
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   new.block
979,980c896
< % new.block						%% no period
<   new.colon						%% colon instead
---
>   new.block
982,993c898,920
<     { format.meeting.ad.ab output			%% from geophys.bst
< %%				 volume, number, series, and address
< %%				 suppressed as well as order changed
< %%				 all treated in format.meeting.ad.ab
< %%      format.in.ed.booktitle "booktitle" output.check
< %%      format.bvolume output
< %%      format.number.series output
< %%      format.pages output
< %%      address output					% for apalike
< %%      new.sentence					% there's no year
< %%      organization output				% here so things
< %%      publisher output				% are simpler
---
>     { format.in.ed.booktitle "booktitle" output.check
>       format.bvolume output
>       %format.number.series output
>       %format.pages output
>       address empty$
>     { organization publisher new.sentence.checkb
>       organization output
>       publisher output
>       %format.date "year" output.check
>       year output
>     }
>     { %address output.nonnull
>       format.address.publisher output  
>       %format.date "year" output.check
>       year output
>       new.sentence
>       organization output
>       %publisher output
>     }
>       if$
>       new.block
>       format.pages output
>       %remove.dots
1000c927
<   format.note output
---
>   note output  
1008,1017c935,959
<   format.authors output
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
< %  format.btitle "title" output.check		%% treat book titles like 
<   format.title "title" output.check		%%  any titles in seglike
<   new.colon						%% colon instead
<   organization address new.block.checkb
<   organization output
<   address output
---
>   author empty$
>     { organization empty$
>     'skip$
>     { organization output.nonnull
>       address output
>     }
>       if$
>     }
>     { format.authors output.nonnull }
>   if$
>   new.block
>   format.btitle "title" output.check
>   author empty$
>     { organization empty$
>     { address new.block.checka
>       address output
>     }
>     'skip$
>       if$
>     }
>     { organization address new.block.checkb
>       organization output
>       address output
>     }
>   if$
1018a961
>   format.date output
1020c963
<   format.note output
---
>   note output
1023a967,973
> FUNCTION {masterthesis.type}
> { lang empty$
>     { "\tongjimasterbib" }
>     { "[硕士学位论文]" }
>   if$
> }
> 
1026,1035c976,979
<   format.authors "author" output.check
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
<   format.title "title" output.check
< % new.block						%% no period
<   new.colon						%% colon instead
<   "Master's thesis" format.thesis.type output.nonnull
<   school "school" output.check
<   address output
---
>   format.authors "author" add.period$ output.check
>   new.block
>   % format.title remove.dots ": " * masterthesis.type * output
>   format.title remove.dots masterthesis.type * output
1037c981,986
<   format.note output
---
>   format.address.school output
>   %format.madd "address" output.check
>   %school "school" output.check  
>   format.date "year" output.check
>   new.block
>   note output
1044,1046c993
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   title howpublished new.block.checkb
1048,1049c995
< % new.block						%% no period
<   new.colon						%% colon instead
---
>   howpublished new.block.checka
1050a997,998
>   format.date output
>   format.url output
1052c1000
<   format.note output
---
>   note output
1053a1002
>   empty.misc.check
1056,1065c1005,1009
< FUNCTION {webpage}                                      %% new in seglike
< { output.bibitem
<   format.authors output
<   author format.key output
<   output.year.check
<   format.title output
<   format.url.access output
<   new.block
<   format.note output
<   fin.entry
---
> FUNCTION {phdthesis.type}
> { lang empty$
>     { "\tongjiphdbib" }
>     { "[博士学位论文]" }
>   if$ 
1070,1080c1014,1017
<   format.authors "author" output.check
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
< %  format.btitle "title" output.check		%% treat book titles like 
<   format.title "title" output.check		%% any titles in seglike
< % new.block						%% no period
<   new.colon						%% colon instead
<   "PhD thesis" format.thesis.type output.nonnull
<   school "school" output.check
<   address output
---
>   format.authors "author" add.period$ output.check
>   new.block
>   % format.title remove.dots ": " * phdthesis.type * output
>   format.title remove.dots phdthesis.type * output
1082c1019,1024
<   format.note output
---
>   format.address.school output
>   %address output
>   %school "school" output.check  
>   format.date "year" output.check
>   new.block
>   note output
1088,1098c1030,1035
<   format.editors output
<   editor format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
< %  format.btitle "title" output.check		%% treat book titles like 
<   format.title "title" output.check		%% any titles in seglike
< %                                               %% no addres in seglike
< % address output				% for apalike
<   organization output				% a nonempty organization
<   new.colon					% we always output
<   publisher output				% here
---
>   editor empty$
>     { organization output }
>     { format.editors output.nonnull }
>   if$
>   new.block
>   format.btitle "title" output.check
1100a1038,1057
>   address empty$
>     { editor empty$
>     { publisher new.sentence.checka }
>     { organization publisher new.sentence.checkb
>       organization output
>     }
>       if$
>       publisher output
>       format.date "year" output.check
>     }
>     { address output.nonnull
>       format.date "year" output.check
>       new.sentence
>       editor empty$
>     'skip$
>     { organization output }
>       if$
>       publisher output
>     }
>   if$
1102c1059
<   format.note output
---
>   note output
1109,1111c1066
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   new.block
1113,1114c1068
< % new.block						%% no period
<   new.colon						%% colon instead
---
>   new.block
1117a1072,1073
>   format.date "year" output.check
>   format.url output
1119c1075
<   format.note output
---
>   note output
1126,1128c1082
<   author format.key output				% special for
<   output.year.check					% apalike
< % new.block						%% no period
---
>   new.block
1131a1086
>   format.date output
1161d1115
< %%				Journal names from geophys.bst added
1166,1169d1119
< MACRO {bssa} {"Bulletin of the Seismological Society of America"}
< 
< MACRO {bstj} {"Bell Systems Technical Journal"}
< 
1172,1183d1121
< MACRO {fb} {"First Break"}
< 
< MACRO {geo} {"Geophysics"}
< 
< MACRO {gj} {"Geophysical Journal"}
< 
< MACRO {gji} {"Geophysical Journal International"}
< 
< MACRO {gjras} {"Geophysical Journal of the Royal Astronomical Society"}
< 
< MACRO {gp} {"Geophysical Prospecting"}
< 
1190,1191d1127
< MACRO {ieeetap} {"IEEE Transactions on Antennas and Propagation"}
< 
1197,1198d1132
< MACRO {ip} {"Inverse Problems"}
< 
1203,1214d1136
< MACRO {jag} {"Journal of Applied Geophysics"}
< 
< MACRO {jam} {"SIAM Journal of Applied Mathematics"}
< 
< MACRO {jap} {"Journal of Applied Physics"}
< 
< MACRO {jasa} {"Journal of the Acoustical Society of America"}
< 
< MACRO {jasaa} {"Journal of the Acoustical Society of America A"}
< 
< MACRO {jasab} {"Journal of the Acoustical Society of America B"}
< 
1217,1246d1138
< MACRO {jg} {"Journal of Geophysics"}
< 
< MACRO {jge} {"Journal of Geophysics and Engineering"}
< 
< MACRO {jgr} {"Journal of Geophysical Research"}
< 
< MACRO {jmp} {"Journal of Mathematical Physics"}
< 
< MACRO {josa} {"Journal of the Optical Society of America"}
< 
< MACRO {josaa} {"Journal of the Optical Society of America A"}
< 
< MACRO {josab} {"Journal of the Optical Society of America B"}
< 
< MACRO {jse} {"Journal of Seismic Exploration"}
< 
< MACRO {ogj} {"Oil and Gas Journal"}
< 
< MACRO {pag} {"Pure and Applied Geophysics"}
< 
< MACRO {pepi} {"Physics of the Earth and Planetory Interior"}
< 
< MACRO {pieee} {"Proceedings of the IEEE"}
< 
< MACRO {rgg} {"Russian Geology and Geophysics"}
< 
< MACRO {rs} {"Radio Science"}
< 
< MACRO {sd} {"Scientific Drilling"}
< 
1251,1260d1142
< MACRO {sg} {"Surveys in Geophysics"}
< 
< MACRO {sgg} {"Soviet Geology and Geophysics"}
< 
< MACRO {sgeg} {"Studia Geophysica et Geodaetica"}
< 
< MACRO {tle} {"The Leading Edge"}
< 
< MACRO {tp} {"Tectonophysics"}
< 
1275,1286d1156
< MACRO {wm} {"Wave Motion"}
< 
< MACRO {dgg} {"Deutsche Geophysikalische Gesellschaft"}
< 
< MACRO {eage} {"EAGE"}
< 
< MACRO {eaeg} {"EAEG"}
< 
< MACRO {seg} {"SEG"}
< 
< MACRO {sbgf} {"Brazilian Geophysical Society"}
< 
1289,1402c1159
< FUNCTION {sortify}
< { purify$
<   "l" change.case$
< }
< 
< INTEGERS { len }
< 
< FUNCTION {chop.word}
< { 's :=
<   'len :=
<   s #1 len substring$ =
<     { s len #1 + global.max$ substring$ }
<     's
<   if$
< }
< 
< %			There are three apalike cases: one person (Jones),
< %			two (Jones and de~Bruijn), and more (Jones et~al.).
< %			This function is much like format.crossref.editors.
< %
< FUNCTION {format.lab.names}
< { 's :=
<   s #1 "{vv~}{ll}" format.name$
<   s num.names$ duplicate$
<   #2 >
<     { pop$ " et~al." * }
<     { #2 <
< 	'skip$
< 	{ s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
< 	    { " et~al." * }
< 	    { " and " * s #2 "{vv~}{ll}" format.name$ * }
< 	  if$
< 	}
<       if$
<     }
<   if$
< }
< 
< FUNCTION {author.key.label}
< { author empty$
<     { key empty$
< 	{ cite$ #1 #3 substring$ }
< 	'key					% apalike uses the whole key
<       if$
<     }
<     { author format.lab.names }
<   if$
< }
< 
< FUNCTION {author.editor.key.label}
< { author empty$
<     { editor empty$
< 	{ key empty$
< 	    { cite$ #1 #3 substring$ }
< 	    'key				% apalike uses the whole key
< 	  if$
< 	}
< 	{ editor format.lab.names }
<       if$
<     }
<     { author format.lab.names }
<   if$
< }
< 
< FUNCTION {editor.key.label}
< { editor empty$
<     { key empty$
< 	{ cite$ #1 #3 substring$ }
< 	'key			% apalike uses the whole key, no organization
<       if$
<     }
<     { editor format.lab.names }
<   if$
< }
< 
< FUNCTION {calc.label}
< { type$ "book" =
<   type$ "inbook" =
<   or
<     'author.editor.key.label
<     { type$ "proceedings" =
< 	'editor.key.label			% apalike ignores organization
< 	'author.key.label			% for labeling and sorting
<       if$
<     }
<   if$
<   ", "							% these three lines are
<   *							% for apalike, which
<   year field.or.null purify$ #-1 #4 substring$		% uses all four digits
<   *
<   'label :=
< }
< 
< FUNCTION {sort.format.names}
< { 's :=
<   #1 'nameptr :=
<   ""
<   s num.names$ 'numnames :=
<   numnames 'namesleft :=
<     { namesleft #0 > }
<     { nameptr #1 >
< 	{ "   " * }
< 	'skip$
<       if$						% apalike uses initials
<       s nameptr "{vv{ } }{ll{ }}{  f{ }}{  jj{ }}" format.name$ 't := % <= here
<       nameptr numnames = t "others" = and
< 	{ "et al" * }
< 	{ t sortify * }
<       if$
<       nameptr #1 + 'nameptr :=
<       namesleft #1 - 'namesleft :=
<     }
<   while$
< }
---
> STRINGS { longest.label }
1404,1413c1161
< FUNCTION {sort.format.title}
< { 't :=
<   "A " #2
<     "An " #3
<       "The " #4 t chop.word
<     chop.word
<   chop.word
<   sortify
<   #1 global.max$ substring$
< }
---
> INTEGERS { number.label longest.label.width }
1415,1422c1163,1174
< FUNCTION {author.sort}
< { author empty$
<     { key empty$
< 	{ "to sort, need author or key in " cite$ * warning$
< 	  ""
< 	}
< 	{ key sortify }
<       if$
---
> FUNCTION {initialize.longest.label}
> { "" 'longest.label :=
>   #1 'number.label :=
>   #0 'longest.label.width :=
> }
> 
> FUNCTION {longest.label.pass}
> { number.label int.to.str$ 'label :=
>   number.label #1 + 'number.label :=
>   label width$ longest.label.width >
>     { label 'longest.label :=
>       label width$ 'longest.label.width :=
1424,1521d1175
<     { author sort.format.names }
<   if$
< }
< 
< FUNCTION {author.editor.sort}
< { author empty$
<     { editor empty$
< 	{ key empty$
< 	    { "to sort, need author, editor, or key in " cite$ * warning$
< 	      ""
< 	    }
< 	    { key sortify }
< 	  if$
< 	}
< 	{ editor sort.format.names }
<       if$
<     }
<     { author sort.format.names }
<   if$
< }
< 
< FUNCTION {editor.sort}
< { editor empty$
<     { key empty$
< 	{ "to sort, need editor or key in " cite$ * warning$
< 	  ""
< 	}
< 	{ key sortify }
<       if$
<     }
<     { editor sort.format.names }
<   if$
< }
< 
< %			apalike uses two sorting passes; the first one sets the
< %			labels so that the `a's, `b's, etc. can be computed;
< %			the second pass puts the references in "correct" order.
< %			The presort function is for the first pass. It computes
< %			label, sort.label, and title, and then concatenates.
< FUNCTION {presort}
< { calc.label
<   label sortify
<   "    "
<   *
<   type$ "book" =
<   type$ "inbook" =
<   or
<     'author.editor.sort
<     { type$ "proceedings" =
< 	'editor.sort
< 	'author.sort
<       if$
<     }
<   if$
<   #1 entry.max$ substring$	% for
<   'sort.label :=		% apalike
<   sort.label			% style
<   *
<   "    "
<   *
<   title field.or.null
<   sort.format.title
<   *
<   #1 entry.max$ substring$
<   'sort.key$ :=
< }
< 
< ITERATE {presort}
< 
< SORT		% by label, sort.label, title---for final label calculation
< 
< %STRINGS { last.label next.extra }	% apalike labels are only for the text;
< STRINGS { last.label next.extra
<           last.sort.label}		%% addition for seglike.bst
< 
< INTEGERS { last.extra.num }		% there are none in the bibliography
< 
< FUNCTION {initialize.extra.label.stuff}	% and hence there is no `longest.label'
< { #0 int.to.chr$ 'last.label :=
<   "" 'next.extra :=
<   #0 'last.extra.num :=
< }
< 
< FUNCTION {forward.pass}
< { last.label label =
<     { last.extra.num #1 + 'last.extra.num :=
<       last.extra.num int.to.chr$ 'extra.label :=
<     }
<     { "a" chr.to.int$ 'last.extra.num :=
<       "" 'extra.label :=
<       label 'last.label :=
<     }
<   if$
< }
< 
< FUNCTION {reverse.pass}
< { next.extra "b" =
<     { "a" 'extra.label := }
1524,1549d1177
<   label extra.label * 'label :=
<   extra.label 'next.extra :=
< }
< 
< EXECUTE {initialize.extra.label.stuff}
< 
< ITERATE {forward.pass}
< 
< REVERSE {reverse.pass}
< 
< %				Now that the label is right we sort for real,
< %				on sort.label then year then title.  This is
< %				for the second sorting pass.
< FUNCTION {bib.sort.order}
< { sort.label
<   "    "
<   *
<   year field.or.null sortify
<   *
<   "    "
<   *
<   title field.or.null
<   sort.format.title
<   *
<   #1 entry.max$ substring$
<   'sort.key$ :=
1552,1568c1180
< ITERATE {bib.sort.order}
< 
< SORT		% by sort.label, year, title---giving final bibliography order
< 
< %%				Now that the final order is established, we
< %%				substitute multiple occurrences of the
< %%				same authors by a horizontal line.
< %%				(only for seglike.bst)
< FUNCTION {final.pass}
< { last.sort.label sort.label =
<     { "-" 'dash.label :=
<     }
<     { sort.label 'last.sort.label :=
<       "" 'dash.label :=
<     }
<   if$
< }
---
> EXECUTE {initialize.longest.label}
1570c1182
< ITERATE {final.pass}
---
> ITERATE {longest.label.pass}
1573c1185
< { preamble$ empty$				% no \etalchar in apalike
---
> { preamble$ empty$
1577,1579c1189
<   "\begin{thebibliography}{}" write$ newline$	% no labels in apalike
< %%						%% normal line space
<   "\itemsep0pt" write$ newline$ 		%% between references
---
>   "\begin{thebibliography}{"  longest.label  * "}" * write$ newline$
