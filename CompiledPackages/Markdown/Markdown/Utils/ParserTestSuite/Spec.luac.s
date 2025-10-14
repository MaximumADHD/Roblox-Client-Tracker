MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 652
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K5 ["	foo	baz		bim
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K6 ["<pre><code>foo	baz		bim
</code></pre>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K7 ["Tabs"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K8 ["  	foo	baz		bim
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K6 ["<pre><code>foo	baz		bim
</code></pre>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K7 ["Tabs"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K9 ["    a	a
    ὐ	a
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K10 ["<pre><code>a	a
ὐ	a
</code></pre>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 3
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K7 ["Tabs"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K11 ["  - foo

	bar
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 4
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K7 ["Tabs"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K13 ["- foo

		bar
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K14 ["<ul>
<li>
<p>foo</p>
<pre><code>  bar
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 5
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K7 ["Tabs"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K15 [">		foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K16 ["<blockquote>
<pre><code>  foo
</code></pre>
</blockquote>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 6
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K7 ["Tabs"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K17 ["-		foo
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K18 ["<ul>
<li>
<pre><code>  foo
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 7
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K7 ["Tabs"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K19 ["    foo
	bar
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K20 ["<pre><code>foo
bar
</code></pre>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 8
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K7 ["Tabs"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K21 [" - foo
   - bar
	 - baz
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K22 ["<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz</li>
</ul>
</li>
</ul>
</li>
</ul>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 9
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K7 ["Tabs"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K23 ["#	Foo
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K24 ["<h1>Foo</h1>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 10
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K7 ["Tabs"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K25 ["*	*	*	
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K26 ["<hr />
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 11
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K7 ["Tabs"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K27 ["\!\\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K28 ["<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 12
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K29 ["Backslash escapes"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K30 ["\	\A\a\ \3\φ\«
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K31 ["<p>\	\A\a\ \3\φ\«</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 13
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K29 ["Backslash escapes"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K33 ["<p>*not emphasized*
&lt;br/&gt; not a tag
[not a link](/foo)
`not code`
1. not a list
* not a list
# not a heading
[foo]: /url &quot;not a reference&quot;
&amp;ouml; not a character entity</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 14
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K29 ["Backslash escapes"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K34 ["\\*emphasis*
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K35 ["<p>\<em>emphasis</em></p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 15
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K29 ["Backslash escapes"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K36 ["foo\
bar
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 16
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K29 ["Backslash escapes"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [1]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K38 ["`` \[\` ``
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K39 ["<p><code>\[\`</code></p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 17
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K29 ["Backslash escapes"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K40 ["    \[\]
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K41 ["<pre><code>\[\]
</code></pre>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 18
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K29 ["Backslash escapes"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K42 ["~~~
\[\]
~~~
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K41 ["<pre><code>\[\]
</code></pre>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 19
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K29 ["Backslash escapes"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K43 ["<https://example.com?find=\*>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K44 ["<p><a href=\"https://example.com?find=%5C*\">https://example.com?find=\*</a></p>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 20
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K29 ["Backslash escapes"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 21
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K29 ["Backslash escapes"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K46 ["[foo](/bar\* \"ti\*tle\")
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 22
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K29 ["Backslash escapes"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K48 ["[foo]

[foo]: /bar\* \"ti\*tle\"
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 23
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K29 ["Backslash escapes"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K49 ["``` foo\+bar
foo
```
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 24
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K29 ["Backslash escapes"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K51 ["&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K52 ["<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 25
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K53 ["Entity and numeric character references"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K54 ["&#35; &#1234; &#992; &#0;
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 26
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K53 ["Entity and numeric character references"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K57 ["<p>&quot; ആ ಫ</p>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 27
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K53 ["Entity and numeric character references"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K59 ["<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
&amp;#87654321;
&amp;#abcdef0;
&amp;ThisIsNotDefined; &amp;hi?;</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 28
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K53 ["Entity and numeric character references"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K60 ["&copy
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K61 ["<p>&amp;copy</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 29
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K53 ["Entity and numeric character references"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K63 ["<p>&amp;MadeUpEntity;</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 30
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K53 ["Entity and numeric character references"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 31
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K53 ["Entity and numeric character references"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K65 ["[foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K66 ["<p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 32
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K53 ["Entity and numeric character references"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [17]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K67 ["[foo]

[foo]: /f&ouml;&ouml; \"f&ouml;&ouml;\"
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K66 ["<p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 33
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K53 ["Entity and numeric character references"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K68 ["``` f&ouml;&ouml;
foo
```
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K69 ["<pre><code class=\"language-föö\">foo
</code></pre>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 34
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K53 ["Entity and numeric character references"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K70 ["`f&ouml;&ouml;`
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K71 ["<p><code>f&amp;ouml;&amp;ouml;</code></p>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 35
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K53 ["Entity and numeric character references"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K72 ["    f&ouml;f&ouml;
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K73 ["<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 36
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K53 ["Entity and numeric character references"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K74 ["&#42;foo&#42;
*foo*
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K75 ["<p>*foo*
<em>foo</em></p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 37
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K53 ["Entity and numeric character references"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K76 ["&#42; foo

* foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K77 ["<p>* foo</p>
<ul>
<li>foo</li>
</ul>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 38
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K53 ["Entity and numeric character references"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K78 ["foo&#10;&#10;bar
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 39
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K53 ["Entity and numeric character references"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K80 ["&#9;foo
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K81 ["<p>	foo</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 40
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K53 ["Entity and numeric character references"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K82 ["[a](url &quot;tit&quot;)
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K83 ["<p>[a](url &quot;tit&quot;)</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 41
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K53 ["Entity and numeric character references"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K84 ["- `one
- two`
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K85 ["<ul>
<li>`one</li>
<li>two`</li>
</ul>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 42
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K86 ["Precedence"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K87 ["***
---
___
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 43
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K89 ["Thematic breaks"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K90 ["+++
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K91 ["<p>+++</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 44
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K89 ["Thematic breaks"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K92 ["===
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K93 ["<p>===</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 45
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K89 ["Thematic breaks"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K94 ["--
**
__
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K95 ["<p>--
**
__</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 46
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K89 ["Thematic breaks"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K96 [" ***
  ***
   ***
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 47
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K89 ["Thematic breaks"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K97 ["    ***
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K98 ["<pre><code>***
</code></pre>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 48
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K89 ["Thematic breaks"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [33]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K99 ["Foo
    ***
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 49
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K89 ["Thematic breaks"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K101 ["_____________________________________
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K26 ["<hr />
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 50
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K89 ["Thematic breaks"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K102 [" - - -
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K26 ["<hr />
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 51
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K89 ["Thematic breaks"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K103 [" **  * ** * ** * **
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K26 ["<hr />
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 52
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K89 ["Thematic breaks"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K104 ["-     -      -      -
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K26 ["<hr />
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 53
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K89 ["Thematic breaks"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K105 ["- - - -    
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K26 ["<hr />
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 54
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K89 ["Thematic breaks"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K106 ["_ _ _ _ a

a------

---a---
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K107 ["<p>_ _ _ _ a</p>
<p>a------</p>
<p>---a---</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 55
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K89 ["Thematic breaks"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K108 [" *-*
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K109 ["<p><em>-</em></p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 56
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K89 ["Thematic breaks"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K110 ["- foo
***
- bar
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K111 ["<ul>
<li>foo</li>
</ul>
<hr />
<ul>
<li>bar</li>
</ul>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 57
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K89 ["Thematic breaks"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K112 ["Foo
***
bar
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K113 ["<p>Foo</p>
<hr />
<p>bar</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 58
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K89 ["Thematic breaks"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K114 ["Foo
---
bar
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K115 ["<h2>Foo</h2>
<p>bar</p>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 59
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K89 ["Thematic breaks"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K116 ["* Foo
* * *
* Bar
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K117 ["<ul>
<li>Foo</li>
</ul>
<hr />
<ul>
<li>Bar</li>
</ul>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 60
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K89 ["Thematic breaks"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K118 ["- Foo
- * * *
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K119 ["<ul>
<li>Foo</li>
<li>
<hr />
</li>
</ul>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 61
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K89 ["Thematic breaks"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K120 ["# foo
## foo
### foo
#### foo
##### foo
###### foo
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K121 ["<h1>foo</h1>
<h2>foo</h2>
<h3>foo</h3>
<h4>foo</h4>
<h5>foo</h5>
<h6>foo</h6>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 62
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K122 ["ATX headings"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K123 ["####### foo
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K124 ["<p>####### foo</p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 63
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K122 ["ATX headings"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K125 ["#5 bolt

#hashtag
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K126 ["<p>#5 bolt</p>
<p>#hashtag</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 64
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K122 ["ATX headings"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [49]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K127 ["\## foo
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K128 ["<p>## foo</p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 65
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K122 ["ATX headings"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K129 ["# foo *bar* \*baz\*
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K130 ["<h1>foo <em>bar</em> *baz*</h1>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 66
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K122 ["ATX headings"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K131 ["#                  foo                     
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 67
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K122 ["ATX headings"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K133 [" ### foo
  ## foo
   # foo
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K134 ["<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 68
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K122 ["ATX headings"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K135 ["    # foo
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K136 ["<pre><code># foo
</code></pre>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 69
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K122 ["ATX headings"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K137 ["foo
    # bar
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K138 ["<p>foo
# bar</p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 70
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K122 ["ATX headings"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K139 ["## foo ##
  ###   bar    ###
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K140 ["<h2>foo</h2>
<h3>bar</h3>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 71
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K122 ["ATX headings"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K141 ["# foo ##################################
##### foo ##
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K142 ["<h1>foo</h1>
<h5>foo</h5>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 72
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K122 ["ATX headings"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K143 ["### foo ###     
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K144 ["<h3>foo</h3>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 73
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K122 ["ATX headings"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K145 ["### foo ### b
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 74
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K122 ["ATX headings"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K147 ["# foo#
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K148 ["<h1>foo#</h1>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 75
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K122 ["ATX headings"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K149 ["### foo \###
## foo #\##
# foo \#
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 76
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K122 ["ATX headings"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K151 ["****
## foo
****
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K152 ["<hr />
<h2>foo</h2>
<hr />
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 77
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K122 ["ATX headings"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K153 ["Foo bar
# baz
Bar foo
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K154 ["<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 78
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K122 ["ATX headings"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K155 ["## 
#
### ###
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K156 ["<h2></h2>
<h1></h1>
<h3></h3>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 79
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K122 ["ATX headings"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K157 ["Foo *bar*
=========

Foo *bar*
---------
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K158 ["<h1>Foo <em>bar</em></h1>
<h2>Foo <em>bar</em></h2>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 80
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K159 ["Setext headings"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [65]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K160 ["Foo *bar
baz*
====
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K161 ["<h1>Foo <em>bar
baz</em></h1>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 81
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K159 ["Setext headings"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K162 ["  Foo *bar
baz*	
====
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K161 ["<h1>Foo <em>bar
baz</em></h1>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 82
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K159 ["Setext headings"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K163 ["Foo
-------------------------

Foo
=
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K164 ["<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 83
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K159 ["Setext headings"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K165 ["   Foo
---

  Foo
-----

  Foo
  ===
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K166 ["<h2>Foo</h2>
<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 84
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K159 ["Setext headings"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K167 ["    Foo
    ---

    Foo
---
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K168 ["<pre><code>Foo
---

Foo
</code></pre>
<hr />
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 85
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K159 ["Setext headings"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K169 ["Foo
   ----      
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K170 ["<h2>Foo</h2>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 86
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K159 ["Setext headings"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K171 ["Foo
    ---
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 87
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K159 ["Setext headings"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K174 ["<p>Foo
= =</p>
<p>Foo</p>
<hr />
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 88
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K159 ["Setext headings"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K175 ["Foo  
-----
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K170 ["<h2>Foo</h2>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 89
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K159 ["Setext headings"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K176 ["Foo\
----
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K177 ["<h2>Foo\</h2>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 90
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K159 ["Setext headings"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K178 ["`Foo
----
`

<a title=\"a lot
---
of dashes\"/>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K179 ["<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 91
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K159 ["Setext headings"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K180 ["> Foo
---
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K181 ["<blockquote>
<p>Foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 92
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K159 ["Setext headings"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K182 ["> foo
bar
===
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K183 ["<blockquote>
<p>foo
bar
===</p>
</blockquote>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 93
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K159 ["Setext headings"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K184 ["- Foo
---
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K185 ["<ul>
<li>Foo</li>
</ul>
<hr />
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 94
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K159 ["Setext headings"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K186 ["Foo
Bar
---
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K187 ["<h2>Foo
Bar</h2>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 95
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K159 ["Setext headings"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K188 ["---
Foo
---
Bar
---
Baz
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K189 ["<hr />
<h2>Foo</h2>
<h2>Bar</h2>
<p>Baz</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 96
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K159 ["Setext headings"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [81]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K190 ["
====
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K191 ["<p>====</p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 97
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K159 ["Setext headings"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K192 ["---
---
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K193 ["<hr />
<hr />
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 98
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K159 ["Setext headings"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K194 ["- foo
-----
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K195 ["<ul>
<li>foo</li>
</ul>
<hr />
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 99
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K159 ["Setext headings"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K196 ["    foo
---
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K197 ["<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 100
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K159 ["Setext headings"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K198 ["> foo
-----
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K199 ["<blockquote>
<p>foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 101
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K159 ["Setext headings"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K200 ["\> foo
------
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K201 ["<h2>&gt; foo</h2>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 102
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K159 ["Setext headings"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K203 ["<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 103
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K159 ["Setext headings"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K204 ["Foo
bar

---

baz
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K205 ["<p>Foo
bar</p>
<hr />
<p>baz</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 104
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K159 ["Setext headings"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K206 ["Foo
bar
* * *
baz
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K205 ["<p>Foo
bar</p>
<hr />
<p>baz</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 105
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K159 ["Setext headings"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K207 ["Foo
bar
\---
baz
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K208 ["<p>Foo
bar
---
baz</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 106
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K159 ["Setext headings"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K209 ["    a simple
      indented code block
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K210 ["<pre><code>a simple
  indented code block
</code></pre>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 107
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K211 ["Indented code blocks"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K212 ["  - foo

    bar
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 108
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K211 ["Indented code blocks"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K213 ["1.  foo

    - bar
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K214 ["<ol>
<li>
<p>foo</p>
<ul>
<li>bar</li>
</ul>
</li>
</ol>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 109
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K211 ["Indented code blocks"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K215 ["    <a/>
    *hi*

    - one
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K216 ["<pre><code>&lt;a/&gt;
*hi*

- one
</code></pre>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 110
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K211 ["Indented code blocks"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K217 ["    chunk1

    chunk2
  
 
 
    chunk3
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 111
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K211 ["Indented code blocks"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K219 ["    chunk1
      
      chunk2
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 112
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K211 ["Indented code blocks"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [97]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K221 ["Foo
    bar

"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K222 ["<p>Foo
bar</p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 113
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K211 ["Indented code blocks"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K223 ["    foo
bar
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K224 ["<pre><code>foo
</code></pre>
<p>bar</p>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 114
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K211 ["Indented code blocks"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K225 ["# Heading
    foo
Heading
------
    foo
----
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K226 ["<h1>Heading</h1>
<pre><code>foo
</code></pre>
<h2>Heading</h2>
<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 115
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K211 ["Indented code blocks"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K227 ["        foo
    bar
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K228 ["<pre><code>    foo
bar
</code></pre>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 116
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K211 ["Indented code blocks"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K229 ["
    
    foo
    

"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K230 ["<pre><code>foo
</code></pre>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 117
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K211 ["Indented code blocks"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K231 ["    foo  
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K232 ["<pre><code>foo  
</code></pre>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 118
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K211 ["Indented code blocks"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K233 ["```
<
 >
```
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K234 ["<pre><code>&lt;
 &gt;
</code></pre>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 119
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K235 ["Fenced code blocks"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K236 ["~~~
<
 >
~~~
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K234 ["<pre><code>&lt;
 &gt;
</code></pre>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 120
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K235 ["Fenced code blocks"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K237 ["``
foo
``
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K238 ["<p><code>foo</code></p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 121
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K235 ["Fenced code blocks"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K239 ["```
aaa
~~~
```
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K240 ["<pre><code>aaa
~~~
</code></pre>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 122
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K235 ["Fenced code blocks"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K241 ["~~~
aaa
```
~~~
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K242 ["<pre><code>aaa
```
</code></pre>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 123
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K235 ["Fenced code blocks"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K243 ["````
aaa
```
``````
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K242 ["<pre><code>aaa
```
</code></pre>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 124
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K235 ["Fenced code blocks"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K244 ["~~~~
aaa
~~~
~~~~
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K240 ["<pre><code>aaa
~~~
</code></pre>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 125
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K235 ["Fenced code blocks"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K245 ["```
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K246 ["<pre><code></code></pre>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 126
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K235 ["Fenced code blocks"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K247 ["`````

```
aaa
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K248 ["<pre><code>
```
aaa
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 127
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K235 ["Fenced code blocks"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K249 ["> ```
> aaa

bbb
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K250 ["<blockquote>
<pre><code>aaa
</code></pre>
</blockquote>
<p>bbb</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 128
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K235 ["Fenced code blocks"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [113]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K251 ["```

  
```
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K252 ["<pre><code>
  
</code></pre>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 129
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K235 ["Fenced code blocks"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K253 ["```
```
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K246 ["<pre><code></code></pre>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 130
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K235 ["Fenced code blocks"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K254 [" ```
 aaa
aaa
```
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K255 ["<pre><code>aaa
aaa
</code></pre>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 131
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K235 ["Fenced code blocks"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K0 ["markdown"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K1 ["html"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 132
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K235 ["Fenced code blocks"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K2 ["id"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K3 ["section"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 133
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K235 ["Fenced code blocks"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K4 [{"markdown", "html", "id", "section"}]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K5 ["	foo	baz		bim
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 134
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K235 ["Fenced code blocks"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K6 ["<pre><code>foo	baz		bim
</code></pre>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K7 ["Tabs"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 135
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K235 ["Fenced code blocks"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K8 ["  	foo	baz		bim
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K7 ["Tabs"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 136
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K235 ["Fenced code blocks"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K9 ["    a	a
    ὐ	a
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K10 ["<pre><code>a	a
ὐ	a
</code></pre>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 137
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K235 ["Fenced code blocks"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K11 ["  - foo

	bar
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 138
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K235 ["Fenced code blocks"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K13 ["- foo

		bar
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K14 ["<ul>
<li>
<p>foo</p>
<pre><code>  bar
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 139
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K235 ["Fenced code blocks"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K15 [">		foo
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K16 ["<blockquote>
<pre><code>  foo
</code></pre>
</blockquote>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 140
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K235 ["Fenced code blocks"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K17 ["-		foo
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K18 ["<ul>
<li>
<pre><code>  foo
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 141
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K235 ["Fenced code blocks"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K19 ["    foo
	bar
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K20 ["<pre><code>foo
bar
</code></pre>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 142
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K235 ["Fenced code blocks"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K21 [" - foo
   - bar
	 - baz
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K20 ["<pre><code>foo
bar
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 143
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K235 ["Fenced code blocks"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K22 ["<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz</li>
</ul>
</li>
</ul>
</li>
</ul>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K23 ["#	Foo
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 144
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K235 ["Fenced code blocks"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [129]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K24 ["<h1>Foo</h1>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K25 ["*	*	*	
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 145
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K235 ["Fenced code blocks"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K26 ["<hr />
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K27 ["\!\\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 146
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K235 ["Fenced code blocks"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K28 ["<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K29 ["Backslash escapes"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 147
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K235 ["Fenced code blocks"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K30 ["\	\A\a\ \3\φ\«
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K31 ["<p>\	\A\a\ \3\φ\«</p>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 148
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K33 ["<p>*not emphasized*
&lt;br/&gt; not a tag
[not a link](/foo)
`not code`
1. not a list
* not a list
# not a heading
[foo]: /url &quot;not a reference&quot;
&amp;ouml; not a character entity</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K34 ["\\*emphasis*
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 149
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K35 ["<p>\<em>emphasis</em></p>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K35 ["<p>\<em>emphasis</em></p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 150
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K36 ["foo\
bar
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K36 ["foo\
bar
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 151
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K38 ["`` \[\` ``
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 152
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K39 ["<p><code>\[\`</code></p>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K39 ["<p><code>\[\`</code></p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 153
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K40 ["    \[\]
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K40 ["    \[\]
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 154
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K41 ["<pre><code>\[\]
</code></pre>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K42 ["~~~
\[\]
~~~
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 155
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K43 ["<https://example.com?find=\*>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K43 ["<https://example.com?find=\*>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 156
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K44 ["<p><a href=\"https://example.com?find=%5C*\">https://example.com?find=\*</a></p>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K44 ["<p><a href=\"https://example.com?find=%5C*\">https://example.com?find=\*</a></p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 157
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 158
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K46 ["[foo](/bar\* \"ti\*tle\")
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K46 ["[foo](/bar\* \"ti\*tle\")
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 159
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 160
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [145]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K48 ["[foo]

[foo]: /bar\* \"ti\*tle\"
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K48 ["[foo]

[foo]: /bar\* \"ti\*tle\"
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 161
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K49 ["``` foo\+bar
foo
```
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K49 ["``` foo\+bar
foo
```
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 162
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 163
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K51 ["&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K51 ["&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 164
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K52 ["<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K52 ["<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 165
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K53 ["Entity and numeric character references"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K53 ["Entity and numeric character references"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 166
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K54 ["&#35; &#1234; &#992; &#0;
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 167
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K57 ["<p>&quot; ആ ಫ</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 168
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K59 ["<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
&amp;#87654321;
&amp;#abcdef0;
&amp;ThisIsNotDefined; &amp;hi?;</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 169
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K60 ["&copy
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K61 ["<p>&amp;copy</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 170
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 171
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K63 ["<p>&amp;MadeUpEntity;</p>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 172
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K65 ["[foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K65 ["[foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 173
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K66 ["<p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K67 ["[foo]

[foo]: /f&ouml;&ouml; \"f&ouml;&ouml;\"
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 174
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K68 ["``` f&ouml;&ouml;
foo
```
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K69 ["<pre><code class=\"language-föö\">foo
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 175
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K70 ["`f&ouml;&ouml;`
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K71 ["<p><code>f&amp;ouml;&amp;ouml;</code></p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 176
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [161]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K72 ["    f&ouml;f&ouml;
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K73 ["<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 177
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K74 ["&#42;foo&#42;
*foo*
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K74 ["&#42;foo&#42;
*foo*
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 178
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K75 ["<p>*foo*
<em>foo</em></p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K76 ["&#42; foo

* foo
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 179
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K77 ["<p>* foo</p>
<ul>
<li>foo</li>
</ul>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K78 ["foo&#10;&#10;bar
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 180
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 181
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K80 ["&#9;foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K81 ["<p>	foo</p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 182
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K82 ["[a](url &quot;tit&quot;)
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K83 ["<p>[a](url &quot;tit&quot;)</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 183
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K84 ["- `one
- two`
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K85 ["<ul>
<li>`one</li>
<li>two`</li>
</ul>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 184
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K86 ["Precedence"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K87 ["***
---
___
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 185
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 186
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K89 ["Thematic breaks"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K90 ["+++
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 187
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K91 ["<p>+++</p>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K92 ["===
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 188
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K93 ["<p>===</p>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K93 ["<p>===</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 189
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K94 ["--
**
__
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K95 ["<p>--
**
__</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 190
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K96 [" ***
  ***
   ***
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K97 ["    ***
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 191
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K98 ["<pre><code>***
</code></pre>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K99 ["Foo
    ***
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 192
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [177]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K101 ["_____________________________________
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K102 [" - - -
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 193
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K103 [" **  * ** * ** * **
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K104 ["-     -      -      -
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 194
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K105 ["- - - -    
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K106 ["_ _ _ _ a

a------

---a---
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 195
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K107 ["<p>_ _ _ _ a</p>
<p>a------</p>
<p>---a---</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K108 [" *-*
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 196
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K109 ["<p><em>-</em></p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K110 ["- foo
***
- bar
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 197
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K111 ["<ul>
<li>foo</li>
</ul>
<hr />
<ul>
<li>bar</li>
</ul>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K112 ["Foo
***
bar
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 198
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K113 ["<p>Foo</p>
<hr />
<p>bar</p>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K114 ["Foo
---
bar
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 199
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K115 ["<h2>Foo</h2>
<p>bar</p>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K116 ["* Foo
* * *
* Bar
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 200
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K117 ["<ul>
<li>Foo</li>
</ul>
<hr />
<ul>
<li>Bar</li>
</ul>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K118 ["- Foo
- * * *
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 201
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K119 ["<ul>
<li>Foo</li>
<li>
<hr />
</li>
</ul>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K120 ["# foo
## foo
### foo
#### foo
##### foo
###### foo
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 202
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K121 ["<h1>foo</h1>
<h2>foo</h2>
<h3>foo</h3>
<h4>foo</h4>
<h5>foo</h5>
<h6>foo</h6>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K122 ["ATX headings"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 203
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K123 ["####### foo
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K124 ["<p>####### foo</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 204
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K125 ["#5 bolt

#hashtag
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K126 ["<p>#5 bolt</p>
<p>#hashtag</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 205
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K127 ["\## foo
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K128 ["<p>## foo</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 206
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K129 ["# foo *bar* \*baz\*
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K130 ["<h1>foo <em>bar</em> *baz*</h1>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 207
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K131 ["#                  foo                     
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 208
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [193]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K133 [" ### foo
  ## foo
   # foo
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K134 ["<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 209
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K135 ["    # foo
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K136 ["<pre><code># foo
</code></pre>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 210
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K137 ["foo
    # bar
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K138 ["<p>foo
# bar</p>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 211
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K139 ["## foo ##
  ###   bar    ###
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K140 ["<h2>foo</h2>
<h3>bar</h3>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 212
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K141 ["# foo ##################################
##### foo ##
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K142 ["<h1>foo</h1>
<h5>foo</h5>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 213
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K143 ["### foo ###     
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K144 ["<h3>foo</h3>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 214
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K145 ["### foo ### b
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 215
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K147 ["# foo#
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K148 ["<h1>foo#</h1>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 216
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K149 ["### foo \###
## foo #\##
# foo \#
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 217
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K151 ["****
## foo
****
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K152 ["<hr />
<h2>foo</h2>
<hr />
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 218
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K153 ["Foo bar
# baz
Bar foo
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K154 ["<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 219
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K155 ["## 
#
### ###
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K156 ["<h2></h2>
<h1></h1>
<h3></h3>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K157 ["Foo *bar*
=========

Foo *bar*
---------
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 220
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K155 ["## 
#
### ###
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K158 ["<h1>Foo <em>bar</em></h1>
<h2>Foo <em>bar</em></h2>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K154 ["<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 221
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K155 ["## 
#
### ###
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K159 ["Setext headings"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K160 ["Foo *bar
baz*
====
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 222
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K155 ["## 
#
### ###
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K161 ["<h1>Foo <em>bar
baz</em></h1>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K162 ["  Foo *bar
baz*	
====
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 223
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K155 ["## 
#
### ###
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K163 ["Foo
-------------------------

Foo
=
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K160 ["Foo *bar
baz*
====
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 224
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K155 ["## 
#
### ###
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [209]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K164 ["<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K165 ["   Foo
---

  Foo
-----

  Foo
  ===
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 225
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K155 ["## 
#
### ###
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K166 ["<h2>Foo</h2>
<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K167 ["    Foo
    ---

    Foo
---
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 226
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K155 ["## 
#
### ###
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K168 ["<pre><code>Foo
---

Foo
</code></pre>
<hr />
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K169 ["Foo
   ----      
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 227
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K170 ["<h2>Foo</h2>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K171 ["Foo
    ---
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 228
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K174 ["<p>Foo
= =</p>
<p>Foo</p>
<hr />
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 229
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K175 ["Foo  
-----
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 230
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K176 ["Foo\
----
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K177 ["<h2>Foo\</h2>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 231
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K178 ["`Foo
----
`

<a title=\"a lot
---
of dashes\"/>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 232
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K179 ["<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K180 ["> Foo
---
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 233
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K181 ["<blockquote>
<p>Foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K199 ["<blockquote>
<p>foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 234
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K182 ["> foo
bar
===
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K183 ["<blockquote>
<p>foo
bar
===</p>
</blockquote>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 235
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K184 ["- Foo
---
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K185 ["<ul>
<li>Foo</li>
</ul>
<hr />
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 236
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K186 ["Foo
Bar
---
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K187 ["<h2>Foo
Bar</h2>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 237
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K188 ["---
Foo
---
Bar
---
Baz
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K189 ["<hr />
<h2>Foo</h2>
<h2>Bar</h2>
<p>Baz</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 238
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K190 ["
====
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K191 ["<p>====</p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 239
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K192 ["---
---
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K191 ["<p>====</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 240
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [225]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K193 ["<hr />
<hr />
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K194 ["- foo
-----
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 241
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K195 ["<ul>
<li>foo</li>
</ul>
<hr />
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K196 ["    foo
---
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 242
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K197 ["<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K198 ["> foo
-----
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 243
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K199 ["<blockquote>
<p>foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K200 ["\> foo
------
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 244
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K201 ["<h2>&gt; foo</h2>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 245
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K203 ["<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K204 ["Foo
bar

---

baz
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 246
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K205 ["<p>Foo
bar</p>
<hr />
<p>baz</p>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K206 ["Foo
bar
* * *
baz
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 247
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K207 ["Foo
bar
\---
baz
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K208 ["<p>Foo
bar
---
baz</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 248
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K209 ["    a simple
      indented code block
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K208 ["<p>Foo
bar
---
baz</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 249
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K210 ["<pre><code>a simple
  indented code block
</code></pre>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K211 ["Indented code blocks"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 250
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K212 ["  - foo

    bar
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K213 ["1.  foo

    - bar
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 251
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K214 ["<ol>
<li>
<p>foo</p>
<ul>
<li>bar</li>
</ul>
</li>
</ol>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K215 ["    <a/>
    *hi*

    - one
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 252
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K216 ["<pre><code>&lt;a/&gt;
*hi*

- one
</code></pre>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K217 ["    chunk1

    chunk2
  
 
 
    chunk3
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 253
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K219 ["    chunk1
      
      chunk2
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 254
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K221 ["Foo
    bar

"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K222 ["<p>Foo
bar</p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 255
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K223 ["    foo
bar
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K224 ["<pre><code>foo
</code></pre>
<p>bar</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 0
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [241]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K225 ["# Heading
    foo
Heading
------
    foo
----
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K226 ["<h1>Heading</h1>
<pre><code>foo
</code></pre>
<h2>Heading</h2>
<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K227 ["        foo
    bar
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K224 ["<pre><code>foo
</code></pre>
<p>bar</p>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K228 ["<pre><code>    foo
bar
</code></pre>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K229 ["
    
    foo
    

"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 3
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K230 ["<pre><code>foo
</code></pre>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K231 ["    foo  
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 4
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K232 ["<pre><code>foo  
</code></pre>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K233 ["```
<
 >
```
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 5
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K234 ["<pre><code>&lt;
 &gt;
</code></pre>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 6
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K235 ["Fenced code blocks"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K236 ["~~~
<
 >
~~~
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 7
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K237 ["``
foo
``
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K238 ["<p><code>foo</code></p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 8
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K239 ["```
aaa
~~~
```
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K240 ["<pre><code>aaa
~~~
</code></pre>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 9
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K241 ["~~~
aaa
```
~~~
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K242 ["<pre><code>aaa
```
</code></pre>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 10
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K243 ["````
aaa
```
``````
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K244 ["~~~~
aaa
~~~
~~~~
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 11
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K245 ["```
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K246 ["<pre><code></code></pre>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 12
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K247 ["`````

```
aaa
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K248 ["<pre><code>
```
aaa
</code></pre>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 13
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K249 ["> ```
> aaa

bbb
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K250 ["<blockquote>
<pre><code>aaa
</code></pre>
</blockquote>
<p>bbb</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 14
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K251 ["```

  
```
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K252 ["<pre><code>
  
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 15
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K253 ["```
```
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K254 [" ```
 aaa
aaa
```
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 16
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [257]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K255 ["<pre><code>aaa
aaa
</code></pre>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K0 ["markdown"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 17
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K1 ["html"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K2 ["id"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 18
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K3 ["section"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K4 [{"markdown", "html", "id", "section"}]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 19
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K5 ["	foo	baz		bim
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K6 ["<pre><code>foo	baz		bim
</code></pre>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 20
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K7 ["Tabs"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 21
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K8 ["  	foo	baz		bim
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K9 ["    a	a
    ὐ	a
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 22
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K10 ["<pre><code>a	a
ὐ	a
</code></pre>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K11 ["  - foo

	bar
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 23
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K13 ["- foo

		bar
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 24
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K14 ["<ul>
<li>
<p>foo</p>
<pre><code>  bar
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K15 [">		foo
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 25
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K16 ["<blockquote>
<pre><code>  foo
</code></pre>
</blockquote>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K15 [">		foo
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 26
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K17 ["-		foo
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K18 ["<ul>
<li>
<pre><code>  foo
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 27
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K19 ["    foo
	bar
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K20 ["<pre><code>foo
bar
</code></pre>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 28
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K21 [" - foo
   - bar
	 - baz
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K22 ["<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz</li>
</ul>
</li>
</ul>
</li>
</ul>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 29
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K23 ["#	Foo
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 30
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K24 ["<h1>Foo</h1>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 31
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K25 ["*	*	*	
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 32
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [273]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K26 ["<hr />
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K27 ["\!\\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 33
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K28 ["<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 34
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K29 ["Backslash escapes"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K30 ["\	\A\a\ \3\φ\«
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 35
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K31 ["<p>\	\A\a\ \3\φ\«</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 36
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K33 ["<p>*not emphasized*
&lt;br/&gt; not a tag
[not a link](/foo)
`not code`
1. not a list
* not a list
# not a heading
[foo]: /url &quot;not a reference&quot;
&amp;ouml; not a character entity</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 37
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K34 ["\\*emphasis*
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K35 ["<p>\<em>emphasis</em></p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 38
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K36 ["foo\
bar
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 39
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K38 ["`` \[\` ``
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K39 ["<p><code>\[\`</code></p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 40
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K40 ["    \[\]
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K41 ["<pre><code>\[\]
</code></pre>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 41
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K42 ["~~~
\[\]
~~~
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K43 ["<https://example.com?find=\*>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 42
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K44 ["<p><a href=\"https://example.com?find=%5C*\">https://example.com?find=\*</a></p>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 43
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K46 ["[foo](/bar\* \"ti\*tle\")
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 44
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K48 ["[foo]

[foo]: /bar\* \"ti\*tle\"
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K49 ["``` foo\+bar
foo
```
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 45
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K51 ["&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K52 ["<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 46
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K53 ["Entity and numeric character references"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K54 ["&#35; &#1234; &#992; &#0;
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 47
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 48
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [289]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K57 ["<p>&quot; ആ ಫ</p>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 49
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K59 ["<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
&amp;#87654321;
&amp;#abcdef0;
&amp;ThisIsNotDefined; &amp;hi?;</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K60 ["&copy
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 50
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K61 ["<p>&amp;copy</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 51
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K63 ["<p>&amp;MadeUpEntity;</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 52
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K65 ["[foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K66 ["<p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 53
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K67 ["[foo]

[foo]: /f&ouml;&ouml; \"f&ouml;&ouml;\"
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K68 ["``` f&ouml;&ouml;
foo
```
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 54
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K69 ["<pre><code class=\"language-föö\">foo
</code></pre>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K70 ["`f&ouml;&ouml;`
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 55
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K71 ["<p><code>f&amp;ouml;&amp;ouml;</code></p>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K72 ["    f&ouml;f&ouml;
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 56
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K73 ["<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K74 ["&#42;foo&#42;
*foo*
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 57
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K75 ["<p>*foo*
<em>foo</em></p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K76 ["&#42; foo

* foo
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 58
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K77 ["<p>* foo</p>
<ul>
<li>foo</li>
</ul>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K78 ["foo&#10;&#10;bar
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 59
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K80 ["&#9;foo
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 60
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K81 ["<p>	foo</p>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K82 ["[a](url &quot;tit&quot;)
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 61
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K83 ["<p>[a](url &quot;tit&quot;)</p>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K84 ["- `one
- two`
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 62
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K85 ["<ul>
<li>`one</li>
<li>two`</li>
</ul>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K86 ["Precedence"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 63
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K87 ["***
---
___
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 64
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [305]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K89 ["Thematic breaks"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K90 ["+++
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 65
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K91 ["<p>+++</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K92 ["===
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 66
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K93 ["<p>===</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K94 ["--
**
__
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 67
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K95 ["<p>--
**
__</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K96 [" ***
  ***
   ***
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 68
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K97 ["    ***
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K98 ["<pre><code>***
</code></pre>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 69
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K99 ["Foo
    ***
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 70
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K101 ["_____________________________________
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K102 [" - - -
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 71
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K103 [" **  * ** * ** * **
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K104 ["-     -      -      -
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K238 ["<p><code>foo</code></p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 72
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K105 ["- - - -    
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K106 ["_ _ _ _ a

a------

---a---
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K107 ["<p>_ _ _ _ a</p>
<p>a------</p>
<p>---a---</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 73
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K105 ["- - - -    
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K108 [" *-*
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K109 ["<p><em>-</em></p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 74
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K105 ["- - - -    
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K110 ["- foo
***
- bar
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K111 ["<ul>
<li>foo</li>
</ul>
<hr />
<ul>
<li>bar</li>
</ul>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 75
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K105 ["- - - -    
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K112 ["Foo
***
bar
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K113 ["<p>Foo</p>
<hr />
<p>bar</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 76
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K105 ["- - - -    
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K114 ["Foo
---
bar
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K115 ["<h2>Foo</h2>
<p>bar</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 77
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K105 ["- - - -    
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K116 ["* Foo
* * *
* Bar
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K117 ["<ul>
<li>Foo</li>
</ul>
<hr />
<ul>
<li>Bar</li>
</ul>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 78
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K105 ["- - - -    
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K118 ["- Foo
- * * *
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K119 ["<ul>
<li>Foo</li>
<li>
<hr />
</li>
</ul>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 79
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K105 ["- - - -    
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K120 ["# foo
## foo
### foo
#### foo
##### foo
###### foo
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K121 ["<h1>foo</h1>
<h2>foo</h2>
<h3>foo</h3>
<h4>foo</h4>
<h5>foo</h5>
<h6>foo</h6>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 80
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K105 ["- - - -    
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [321]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K122 ["ATX headings"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K123 ["####### foo
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 81
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K105 ["- - - -    
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K124 ["<p>####### foo</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K125 ["#5 bolt

#hashtag
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 82
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K105 ["- - - -    
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K126 ["<p>#5 bolt</p>
<p>#hashtag</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K127 ["\## foo
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 83
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K105 ["- - - -    
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K128 ["<p>## foo</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K129 ["# foo *bar* \*baz\*
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 84
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K105 ["- - - -    
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K130 ["<h1>foo <em>bar</em> *baz*</h1>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K131 ["#                  foo                     
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 85
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K105 ["- - - -    
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K133 [" ### foo
  ## foo
   # foo
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 86
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K105 ["- - - -    
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K134 ["<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K135 ["    # foo
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 87
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K105 ["- - - -    
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K136 ["<pre><code># foo
</code></pre>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K137 ["foo
    # bar
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 88
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K105 ["- - - -    
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K138 ["<p>foo
# bar</p>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K139 ["## foo ##
  ###   bar    ###
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 89
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K105 ["- - - -    
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K140 ["<h2>foo</h2>
<h3>bar</h3>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K141 ["# foo ##################################
##### foo ##
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 90
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K105 ["- - - -    
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K142 ["<h1>foo</h1>
<h5>foo</h5>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K143 ["### foo ###     
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 91
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K105 ["- - - -    
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K144 ["<h3>foo</h3>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K145 ["### foo ### b
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 92
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K105 ["- - - -    
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K147 ["# foo#
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 93
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K105 ["- - - -    
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K148 ["<h1>foo#</h1>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K149 ["### foo \###
## foo #\##
# foo \#
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 94
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K151 ["****
## foo
****
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K152 ["<hr />
<h2>foo</h2>
<hr />
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 95
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K153 ["Foo bar
# baz
Bar foo
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K154 ["<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 96
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [337]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K155 ["## 
#
### ###
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K156 ["<h2></h2>
<h1></h1>
<h3></h3>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 97
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K157 ["Foo *bar*
=========

Foo *bar*
---------
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K158 ["<h1>Foo <em>bar</em></h1>
<h2>Foo <em>bar</em></h2>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 98
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K159 ["Setext headings"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K160 ["Foo *bar
baz*
====
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 99
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K161 ["<h1>Foo <em>bar
baz</em></h1>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K162 ["  Foo *bar
baz*	
====
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 100
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K163 ["Foo
-------------------------

Foo
=
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K149 ["### foo \###
## foo #\##
# foo \#
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 101
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K164 ["<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K165 ["   Foo
---

  Foo
-----

  Foo
  ===
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 102
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K166 ["<h2>Foo</h2>
<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K167 ["    Foo
    ---

    Foo
---
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 103
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K168 ["<pre><code>Foo
---

Foo
</code></pre>
<hr />
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K169 ["Foo
   ----      
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 104
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K170 ["<h2>Foo</h2>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K171 ["Foo
    ---
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 105
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 106
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K174 ["<p>Foo
= =</p>
<p>Foo</p>
<hr />
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K175 ["Foo  
-----
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 107
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K176 ["Foo\
----
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K177 ["<h2>Foo\</h2>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 108
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K178 ["`Foo
----
`

<a title=\"a lot
---
of dashes\"/>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K179 ["<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 109
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K180 ["> Foo
---
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K181 ["<blockquote>
<p>Foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 110
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K182 ["> foo
bar
===
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K183 ["<blockquote>
<p>foo
bar
===</p>
</blockquote>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 111
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K184 ["- Foo
---
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K185 ["<ul>
<li>Foo</li>
</ul>
<hr />
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 112
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [353]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K186 ["Foo
Bar
---
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K187 ["<h2>Foo
Bar</h2>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 113
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K188 ["---
Foo
---
Bar
---
Baz
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K189 ["<hr />
<h2>Foo</h2>
<h2>Bar</h2>
<p>Baz</p>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 114
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K190 ["
====
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K191 ["<p>====</p>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 115
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K192 ["---
---
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K193 ["<hr />
<hr />
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 116
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K194 ["- foo
-----
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K187 ["<h2>Foo
Bar</h2>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 117
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K195 ["<ul>
<li>foo</li>
</ul>
<hr />
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K196 ["    foo
---
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 118
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K197 ["<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K198 ["> foo
-----
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 119
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K199 ["<blockquote>
<p>foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K200 ["\> foo
------
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 120
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K201 ["<h2>&gt; foo</h2>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 121
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K203 ["<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K204 ["Foo
bar

---

baz
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 122
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K205 ["<p>Foo
bar</p>
<hr />
<p>baz</p>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K206 ["Foo
bar
* * *
baz
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 123
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K207 ["Foo
bar
\---
baz
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K208 ["<p>Foo
bar
---
baz</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 124
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K209 ["    a simple
      indented code block
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K210 ["<pre><code>a simple
  indented code block
</code></pre>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 125
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K211 ["Indented code blocks"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K204 ["Foo
bar

---

baz
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 126
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K212 ["  - foo

    bar
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K213 ["1.  foo

    - bar
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 127
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K214 ["<ol>
<li>
<p>foo</p>
<ul>
<li>bar</li>
</ul>
</li>
</ol>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K215 ["    <a/>
    *hi*

    - one
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 128
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [369]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K216 ["<pre><code>&lt;a/&gt;
*hi*

- one
</code></pre>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K217 ["    chunk1

    chunk2
  
 
 
    chunk3
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 129
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K219 ["    chunk1
      
      chunk2
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 130
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K221 ["Foo
    bar

"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 131
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K222 ["<p>Foo
bar</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K223 ["    foo
bar
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 132
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K224 ["<pre><code>foo
</code></pre>
<p>bar</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K225 ["# Heading
    foo
Heading
------
    foo
----
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 133
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K226 ["<h1>Heading</h1>
<pre><code>foo
</code></pre>
<h2>Heading</h2>
<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K227 ["        foo
    bar
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 134
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K228 ["<pre><code>    foo
bar
</code></pre>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K229 ["
    
    foo
    

"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 135
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K230 ["<pre><code>foo
</code></pre>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K231 ["    foo  
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 136
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K232 ["<pre><code>foo  
</code></pre>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K233 ["```
<
 >
```
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 137
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K234 ["<pre><code>&lt;
 &gt;
</code></pre>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K235 ["Fenced code blocks"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 138
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K236 ["~~~
<
 >
~~~
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K237 ["``
foo
``
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 139
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K238 ["<p><code>foo</code></p>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K239 ["```
aaa
~~~
```
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 140
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K240 ["<pre><code>aaa
~~~
</code></pre>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K241 ["~~~
aaa
```
~~~
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 141
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K242 ["<pre><code>aaa
```
</code></pre>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K243 ["````
aaa
```
``````
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 142
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K244 ["~~~~
aaa
~~~
~~~~
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K233 ["```
<
 >
```
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 143
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K245 ["```
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K246 ["<pre><code></code></pre>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 144
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [385]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K247 ["`````

```
aaa
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K248 ["<pre><code>
```
aaa
</code></pre>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 145
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K249 ["> ```
> aaa

bbb
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K250 ["<blockquote>
<pre><code>aaa
</code></pre>
</blockquote>
<p>bbb</p>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 146
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K251 ["```

  
```
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K252 ["<pre><code>
  
</code></pre>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 147
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K253 ["```
```
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K254 [" ```
 aaa
aaa
```
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 148
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K255 ["<pre><code>aaa
aaa
</code></pre>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K0 ["markdown"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 149
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K1 ["html"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K2 ["id"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 150
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K3 ["section"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K4 [{"markdown", "html", "id", "section"}]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 151
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K5 ["	foo	baz		bim
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K6 ["<pre><code>foo	baz		bim
</code></pre>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 152
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K7 ["Tabs"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K8 ["  	foo	baz		bim
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 153
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K9 ["    a	a
    ὐ	a
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K2 ["id"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 154
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K10 ["<pre><code>a	a
ὐ	a
</code></pre>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K11 ["  - foo

	bar
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 155
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K13 ["- foo

		bar
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 156
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K14 ["<ul>
<li>
<p>foo</p>
<pre><code>  bar
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K15 [">		foo
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 157
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K16 ["<blockquote>
<pre><code>  foo
</code></pre>
</blockquote>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K17 ["-		foo
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 158
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K18 ["<ul>
<li>
<pre><code>  foo
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K19 ["    foo
	bar
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 159
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K20 ["<pre><code>foo
bar
</code></pre>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K21 [" - foo
   - bar
	 - baz
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 160
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [401]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K22 ["<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz</li>
</ul>
</li>
</ul>
</li>
</ul>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K23 ["#	Foo
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 161
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K24 ["<h1>Foo</h1>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K25 ["*	*	*	
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 162
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K26 ["<hr />
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K27 ["\!\\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 163
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K28 ["<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K29 ["Backslash escapes"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 164
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K30 ["\	\A\a\ \3\φ\«
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K31 ["<p>\	\A\a\ \3\φ\«</p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 165
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K33 ["<p>*not emphasized*
&lt;br/&gt; not a tag
[not a link](/foo)
`not code`
1. not a list
* not a list
# not a heading
[foo]: /url &quot;not a reference&quot;
&amp;ouml; not a character entity</p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 166
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K34 ["\\*emphasis*
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K35 ["<p>\<em>emphasis</em></p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 167
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K36 ["foo\
bar
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 168
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K38 ["`` \[\` ``
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K39 ["<p><code>\[\`</code></p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 169
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K40 ["    \[\]
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K41 ["<pre><code>\[\]
</code></pre>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 170
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K42 ["~~~
\[\]
~~~
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K43 ["<https://example.com?find=\*>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 171
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K44 ["<p><a href=\"https://example.com?find=%5C*\">https://example.com?find=\*</a></p>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 172
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K46 ["[foo](/bar\* \"ti\*tle\")
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 173
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K48 ["[foo]

[foo]: /bar\* \"ti\*tle\"
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 174
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K49 ["``` foo\+bar
foo
```
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 175
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K51 ["&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K52 ["<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 176
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [417]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K53 ["Entity and numeric character references"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K54 ["&#35; &#1234; &#992; &#0;
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 177
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 178
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K57 ["<p>&quot; ആ ಫ</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 179
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K59 ["<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
&amp;#87654321;
&amp;#abcdef0;
&amp;ThisIsNotDefined; &amp;hi?;</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K60 ["&copy
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 180
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K61 ["<p>&amp;copy</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 181
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K63 ["<p>&amp;MadeUpEntity;</p>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 182
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K65 ["[foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K66 ["<p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 183
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K67 ["[foo]

[foo]: /f&ouml;&ouml; \"f&ouml;&ouml;\"
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K68 ["``` f&ouml;&ouml;
foo
```
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 184
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K69 ["<pre><code class=\"language-föö\">foo
</code></pre>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K70 ["`f&ouml;&ouml;`
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 185
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K71 ["<p><code>f&amp;ouml;&amp;ouml;</code></p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K72 ["    f&ouml;f&ouml;
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 186
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K73 ["<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K74 ["&#42;foo&#42;
*foo*
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 187
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K75 ["<p>*foo*
<em>foo</em></p>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K76 ["&#42; foo

* foo
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 188
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K77 ["<p>* foo</p>
<ul>
<li>foo</li>
</ul>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K78 ["foo&#10;&#10;bar
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 189
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K80 ["&#9;foo
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 190
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K81 ["<p>	foo</p>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K82 ["[a](url &quot;tit&quot;)
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 191
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K83 ["<p>[a](url &quot;tit&quot;)</p>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K84 ["- `one
- two`
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 192
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [433]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K85 ["<ul>
<li>`one</li>
<li>two`</li>
</ul>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 193
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K86 ["Precedence"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 194
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K87 ["***
---
___
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 195
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K89 ["Thematic breaks"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K70 ["`f&ouml;&ouml;`
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 196
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K90 ["+++
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K68 ["``` f&ouml;&ouml;
foo
```
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 197
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K91 ["<p>+++</p>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K92 ["===
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 198
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K93 ["<p>===</p>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K94 ["--
**
__
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 199
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K95 ["<p>--
**
__</p>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K96 [" ***
  ***
   ***
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 200
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K97 ["    ***
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K98 ["<pre><code>***
</code></pre>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 201
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K99 ["Foo
    ***
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 202
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K101 ["_____________________________________
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K102 [" - - -
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 203
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K103 [" **  * ** * ** * **
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K104 ["-     -      -      -
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 204
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K105 ["- - - -    
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K106 ["_ _ _ _ a

a------

---a---
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 205
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K107 ["<p>_ _ _ _ a</p>
<p>a------</p>
<p>---a---</p>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K104 ["-     -      -      -
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 206
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K108 [" *-*
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K106 ["_ _ _ _ a

a------

---a---
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 207
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K109 ["<p><em>-</em></p>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K110 ["- foo
***
- bar
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 208
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [449]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K111 ["<ul>
<li>foo</li>
</ul>
<hr />
<ul>
<li>bar</li>
</ul>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K110 ["- foo
***
- bar
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 209
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K112 ["Foo
***
bar
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K113 ["<p>Foo</p>
<hr />
<p>bar</p>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 210
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K114 ["Foo
---
bar
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K115 ["<h2>Foo</h2>
<p>bar</p>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 211
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K116 ["* Foo
* * *
* Bar
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K117 ["<ul>
<li>Foo</li>
</ul>
<hr />
<ul>
<li>Bar</li>
</ul>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 212
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K118 ["- Foo
- * * *
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K119 ["<ul>
<li>Foo</li>
<li>
<hr />
</li>
</ul>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 213
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K120 ["# foo
## foo
### foo
#### foo
##### foo
###### foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K121 ["<h1>foo</h1>
<h2>foo</h2>
<h3>foo</h3>
<h4>foo</h4>
<h5>foo</h5>
<h6>foo</h6>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 214
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K122 ["ATX headings"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K123 ["####### foo
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 215
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K124 ["<p>####### foo</p>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K125 ["#5 bolt

#hashtag
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 216
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K126 ["<p>#5 bolt</p>
<p>#hashtag</p>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K127 ["\## foo
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 217
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K128 ["<p>## foo</p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K129 ["# foo *bar* \*baz\*
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 218
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K130 ["<h1>foo <em>bar</em> *baz*</h1>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K131 ["#                  foo                     
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 219
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K133 [" ### foo
  ## foo
   # foo
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 220
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K134 ["<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K135 ["    # foo
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 221
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K136 ["<pre><code># foo
</code></pre>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K137 ["foo
    # bar
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 222
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K138 ["<p>foo
# bar</p>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K139 ["## foo ##
  ###   bar    ###
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 223
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K140 ["<h2>foo</h2>
<h3>bar</h3>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K141 ["# foo ##################################
##### foo ##
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 224
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [465]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K142 ["<h1>foo</h1>
<h5>foo</h5>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K143 ["### foo ###     
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 225
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K144 ["<h3>foo</h3>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K145 ["### foo ### b
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 226
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K147 ["# foo#
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K148 ["<h1>foo#</h1>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 227
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K149 ["### foo \###
## foo #\##
# foo \#
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 228
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K151 ["****
## foo
****
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K152 ["<hr />
<h2>foo</h2>
<hr />
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 229
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K153 ["Foo bar
# baz
Bar foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K152 ["<hr />
<h2>foo</h2>
<hr />
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 230
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K154 ["<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K155 ["## 
#
### ###
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 231
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K156 ["<h2></h2>
<h1></h1>
<h3></h3>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K157 ["Foo *bar*
=========

Foo *bar*
---------
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 232
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K158 ["<h1>Foo <em>bar</em></h1>
<h2>Foo <em>bar</em></h2>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K159 ["Setext headings"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 233
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K160 ["Foo *bar
baz*
====
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K161 ["<h1>Foo <em>bar
baz</em></h1>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 234
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K162 ["  Foo *bar
baz*	
====
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K163 ["Foo
-------------------------

Foo
=
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 235
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K164 ["<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K165 ["   Foo
---

  Foo
-----

  Foo
  ===
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 236
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K166 ["<h2>Foo</h2>
<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K167 ["    Foo
    ---

    Foo
---
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 237
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K168 ["<pre><code>Foo
---

Foo
</code></pre>
<hr />
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K169 ["Foo
   ----      
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 238
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K170 ["<h2>Foo</h2>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K171 ["Foo
    ---
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 239
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 240
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [481]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K174 ["<p>Foo
= =</p>
<p>Foo</p>
<hr />
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K175 ["Foo  
-----
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 241
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K176 ["Foo\
----
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K177 ["<h2>Foo\</h2>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 242
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K178 ["`Foo
----
`

<a title=\"a lot
---
of dashes\"/>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K177 ["<h2>Foo\</h2>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 243
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K179 ["<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K180 ["> Foo
---
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 244
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K181 ["<blockquote>
<p>Foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K182 ["> foo
bar
===
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 245
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K183 ["<blockquote>
<p>foo
bar
===</p>
</blockquote>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K184 ["- Foo
---
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 246
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K185 ["<ul>
<li>Foo</li>
</ul>
<hr />
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K186 ["Foo
Bar
---
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 247
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K187 ["<h2>Foo
Bar</h2>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K188 ["---
Foo
---
Bar
---
Baz
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 248
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K189 ["<hr />
<h2>Foo</h2>
<h2>Bar</h2>
<p>Baz</p>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K190 ["
====
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 249
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K191 ["<p>====</p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K192 ["---
---
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 250
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K193 ["<hr />
<hr />
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K194 ["- foo
-----
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 251
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K195 ["<ul>
<li>foo</li>
</ul>
<hr />
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K196 ["    foo
---
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 252
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K197 ["<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K198 ["> foo
-----
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 253
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K199 ["<blockquote>
<p>foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K145 ["### foo ### b
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 254
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K200 ["\> foo
------
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K201 ["<h2>&gt; foo</h2>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 255
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K203 ["<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 0
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [497]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K204 ["Foo
bar

---

baz
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K205 ["<p>Foo
bar</p>
<hr />
<p>baz</p>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K206 ["Foo
bar
* * *
baz
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K207 ["Foo
bar
\---
baz
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K208 ["<p>Foo
bar
---
baz</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K209 ["    a simple
      indented code block
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 3
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K210 ["<pre><code>a simple
  indented code block
</code></pre>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K211 ["Indented code blocks"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 4
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K212 ["  - foo

    bar
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K213 ["1.  foo

    - bar
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 5
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K214 ["<ol>
<li>
<p>foo</p>
<ul>
<li>bar</li>
</ul>
</li>
</ol>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K215 ["    <a/>
    *hi*

    - one
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 6
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K216 ["<pre><code>&lt;a/&gt;
*hi*

- one
</code></pre>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K217 ["    chunk1

    chunk2
  
 
 
    chunk3
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 7
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K218 ["<pre><code>chunk1

chunk2



chunk3
</code></pre>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K219 ["    chunk1
      
      chunk2
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 8
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K220 ["<pre><code>chunk1
  
  chunk2
</code></pre>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K221 ["Foo
    bar

"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 9
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K222 ["<p>Foo
bar</p>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K223 ["    foo
bar
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 10
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K224 ["<pre><code>foo
</code></pre>
<p>bar</p>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K225 ["# Heading
    foo
Heading
------
    foo
----
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 11
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K226 ["<h1>Heading</h1>
<pre><code>foo
</code></pre>
<h2>Heading</h2>
<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K227 ["        foo
    bar
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 12
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K228 ["<pre><code>    foo
bar
</code></pre>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K229 ["
    
    foo
    

"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 13
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K230 ["<pre><code>foo
</code></pre>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K231 ["    foo  
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 14
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K232 ["<pre><code>foo  
</code></pre>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K99 ["Foo
    ***
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 15
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K233 ["```
<
 >
```
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K203 ["<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 16
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [513]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K234 ["<pre><code>&lt;
 &gt;
</code></pre>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K209 ["    a simple
      indented code block
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 17
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K235 ["Fenced code blocks"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K211 ["Indented code blocks"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 18
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K236 ["~~~
<
 >
~~~
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K213 ["1.  foo

    - bar
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 19
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K237 ["``
foo
``
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K238 ["<p><code>foo</code></p>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 20
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K239 ["```
aaa
~~~
```
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K240 ["<pre><code>aaa
~~~
</code></pre>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 21
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K241 ["~~~
aaa
```
~~~
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K221 ["Foo
    bar

"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 22
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K242 ["<pre><code>aaa
```
</code></pre>
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K243 ["````
aaa
```
``````
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 23
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K244 ["~~~~
aaa
~~~
~~~~
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K245 ["```
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 24
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K246 ["<pre><code></code></pre>
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K247 ["`````

```
aaa
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 25
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K248 ["<pre><code>
```
aaa
</code></pre>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K249 ["> ```
> aaa

bbb
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 26
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K250 ["<blockquote>
<pre><code>aaa
</code></pre>
</blockquote>
<p>bbb</p>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K99 ["Foo
    ***
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 27
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K251 ["```

  
```
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K252 ["<pre><code>
  
</code></pre>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 28
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K253 ["```
```
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K254 [" ```
 aaa
aaa
```
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 29
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K255 ["<pre><code>aaa
aaa
</code></pre>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K0 ["markdown"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 30
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K1 ["html"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K2 ["id"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 31
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K3 ["section"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K4 [{"markdown", "html", "id", "section"}]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 32
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [529]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K5 ["	foo	baz		bim
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K6 ["<pre><code>foo	baz		bim
</code></pre>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 33
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K7 ["Tabs"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K8 ["  	foo	baz		bim
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 34
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K9 ["    a	a
    ὐ	a
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K10 ["<pre><code>a	a
ὐ	a
</code></pre>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 35
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K11 ["  - foo

	bar
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K12 ["<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 36
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K13 ["- foo

		bar
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K14 ["<ul>
<li>
<p>foo</p>
<pre><code>  bar
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 37
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K15 [">		foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K16 ["<blockquote>
<pre><code>  foo
</code></pre>
</blockquote>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 38
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K17 ["-		foo
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K18 ["<ul>
<li>
<pre><code>  foo
</code></pre>
</li>
</ul>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 39
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K19 ["    foo
	bar
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K20 ["<pre><code>foo
bar
</code></pre>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 40
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K21 [" - foo
   - bar
	 - baz
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K99 ["Foo
    ***
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 41
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K22 ["<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz</li>
</ul>
</li>
</ul>
</li>
</ul>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K23 ["#	Foo
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 42
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K24 ["<h1>Foo</h1>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K25 ["*	*	*	
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 43
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K26 ["<hr />
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K27 ["\!\\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 44
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K28 ["<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K99 ["Foo
    ***
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 45
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K29 ["Backslash escapes"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K23 ["#	Foo
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 46
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K30 ["\	\A\a\ \3\φ\«
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K31 ["<p>\	\A\a\ \3\φ\«</p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 47
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K32 ["\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url \"not a reference\"
\&ouml; not a character entity
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K33 ["<p>*not emphasized*
&lt;br/&gt; not a tag
[not a link](/foo)
`not code`
1. not a list
* not a list
# not a heading
[foo]: /url &quot;not a reference&quot;
&amp;ouml; not a character entity</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 48
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [545]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K34 ["\\*emphasis*
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K25 ["*	*	*	
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 49
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K35 ["<p>\<em>emphasis</em></p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K36 ["foo\
bar
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 50
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K38 ["`` \[\` ``
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 51
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K39 ["<p><code>\[\`</code></p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K40 ["    \[\]
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 52
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K41 ["<pre><code>\[\]
</code></pre>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K42 ["~~~
\[\]
~~~
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 53
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K43 ["<https://example.com?find=\*>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K44 ["<p><a href=\"https://example.com?find=%5C*\">https://example.com?find=\*</a></p>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 54
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K45 ["<a href=\"/bar\/)\">
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K116 ["* Foo
* * *
* Bar
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 55
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K46 ["[foo](/bar\* \"ti\*tle\")
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K47 ["<p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 56
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K48 ["[foo]

[foo]: /bar\* \"ti\*tle\"
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K49 ["``` foo\+bar
foo
```
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 57
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K50 ["<pre><code class=\"language-foo+bar\">foo
</code></pre>
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K51 ["&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 58
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K52 ["<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K53 ["Entity and numeric character references"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 59
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K54 ["&#35; &#1234; &#992; &#0;
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 60
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K57 ["<p>&quot; ആ ಫ</p>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 61
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K59 ["<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
&amp;#87654321;
&amp;#abcdef0;
&amp;ThisIsNotDefined; &amp;hi?;</p>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K60 ["&copy
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 62
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K61 ["<p>&amp;copy</p>
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K60 ["&copy
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 63
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K62 ["&MadeUpEntity;
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 64
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [561]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K63 ["<p>&amp;MadeUpEntity;</p>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K58 ["&nbsp &x; &#; &#x;
&#87654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 65
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K64 ["<a href=\"&ouml;&ouml;.html\">
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K65 ["[foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 66
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K66 ["<p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K67 ["[foo]

[foo]: /f&ouml;&ouml; \"f&ouml;&ouml;\"
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 67
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K68 ["``` f&ouml;&ouml;
foo
```
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K69 ["<pre><code class=\"language-föö\">foo
</code></pre>
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 68
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K70 ["`f&ouml;&ouml;`
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K71 ["<p><code>f&amp;ouml;&amp;ouml;</code></p>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 69
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K72 ["    f&ouml;f&ouml;
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K73 ["<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 70
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K74 ["&#42;foo&#42;
*foo*
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K73 ["<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 71
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K75 ["<p>*foo*
<em>foo</em></p>
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 72
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K76 ["&#42; foo

* foo
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K77 ["<p>* foo</p>
<ul>
<li>foo</li>
</ul>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 73
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K78 ["foo&#10;&#10;bar
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 74
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K80 ["&#9;foo
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K81 ["<p>	foo</p>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 75
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K82 ["[a](url &quot;tit&quot;)
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K55 ["<p># Ӓ Ϡ �</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 76
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K83 ["<p>[a](url &quot;tit&quot;)</p>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K77 ["<p>* foo</p>
<ul>
<li>foo</li>
</ul>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 77
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K84 ["- `one
- two`
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K85 ["<ul>
<li>`one</li>
<li>two`</li>
</ul>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 78
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K86 ["Precedence"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K79 ["<p>foo

bar</p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 79
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K87 ["***
---
___
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K88 ["<hr />
<hr />
<hr />
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 80
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [577]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K89 ["Thematic breaks"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K90 ["+++
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 81
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K56 ["&#X22; &#XD06; &#xcab;
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K91 ["<p>+++</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K92 ["===
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 82
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K93 ["<p>===</p>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K94 ["--
**
__
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K95 ["<p>--
**
__</p>
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 83
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K93 ["<p>===</p>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K96 [" ***
  ***
   ***
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K97 ["    ***
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 84
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K93 ["<p>===</p>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K98 ["<pre><code>***
</code></pre>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K99 ["Foo
    ***
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 85
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K93 ["<p>===</p>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K100 ["<p>Foo
***</p>
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K101 ["_____________________________________
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 86
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K93 ["<p>===</p>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K102 [" - - -
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K103 [" **  * ** * ** * **
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 87
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K93 ["<p>===</p>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K104 ["-     -      -      -
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K105 ["- - - -    
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 88
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K93 ["<p>===</p>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K106 ["_ _ _ _ a

a------

---a---
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K107 ["<p>_ _ _ _ a</p>
<p>a------</p>
<p>---a---</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 89
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K93 ["<p>===</p>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K108 [" *-*
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K109 ["<p><em>-</em></p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 90
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K93 ["<p>===</p>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K110 ["- foo
***
- bar
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K111 ["<ul>
<li>foo</li>
</ul>
<hr />
<ul>
<li>bar</li>
</ul>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 91
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K93 ["<p>===</p>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K112 ["Foo
***
bar
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K113 ["<p>Foo</p>
<hr />
<p>bar</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 92
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K93 ["<p>===</p>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K114 ["Foo
---
bar
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K115 ["<h2>Foo</h2>
<p>bar</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 93
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K93 ["<p>===</p>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K116 ["* Foo
* * *
* Bar
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K117 ["<ul>
<li>Foo</li>
</ul>
<hr />
<ul>
<li>Bar</li>
</ul>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 94
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K93 ["<p>===</p>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K118 ["- Foo
- * * *
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K119 ["<ul>
<li>Foo</li>
<li>
<hr />
</li>
</ul>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 95
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K93 ["<p>===</p>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K120 ["# foo
## foo
### foo
#### foo
##### foo
###### foo
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K121 ["<h1>foo</h1>
<h2>foo</h2>
<h3>foo</h3>
<h4>foo</h4>
<h5>foo</h5>
<h6>foo</h6>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 96
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K93 ["<p>===</p>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [593]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K122 ["ATX headings"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K123 ["####### foo
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 97
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K93 ["<p>===</p>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K124 ["<p>####### foo</p>
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K125 ["#5 bolt

#hashtag
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 98
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K93 ["<p>===</p>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K126 ["<p>#5 bolt</p>
<p>#hashtag</p>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K127 ["\## foo
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 99
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K93 ["<p>===</p>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K128 ["<p>## foo</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K129 ["# foo *bar* \*baz\*
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 100
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K93 ["<p>===</p>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K130 ["<h1>foo <em>bar</em> *baz*</h1>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K131 ["#                  foo                     
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 101
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K133 [" ### foo
  ## foo
   # foo
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K134 ["<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 102
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K135 ["    # foo
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K136 ["<pre><code># foo
</code></pre>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 103
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K137 ["foo
    # bar
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K138 ["<p>foo
# bar</p>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 104
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K139 ["## foo ##
  ###   bar    ###
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K140 ["<h2>foo</h2>
<h3>bar</h3>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 105
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K141 ["# foo ##################################
##### foo ##
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K142 ["<h1>foo</h1>
<h5>foo</h5>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 106
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K143 ["### foo ###     
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K144 ["<h3>foo</h3>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 107
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K145 ["### foo ### b
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K146 ["<h3>foo ### b</h3>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 108
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K147 ["# foo#
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K148 ["<h1>foo#</h1>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 109
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K149 ["### foo \###
## foo #\##
# foo \#
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K150 ["<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 110
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K151 ["****
## foo
****
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K152 ["<hr />
<h2>foo</h2>
<hr />
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 111
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K153 ["Foo bar
# baz
Bar foo
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K154 ["<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 112
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [609]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K155 ["## 
#
### ###
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K156 ["<h2></h2>
<h1></h1>
<h3></h3>
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 113
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K157 ["Foo *bar*
=========

Foo *bar*
---------
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K158 ["<h1>Foo <em>bar</em></h1>
<h2>Foo <em>bar</em></h2>
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 114
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K159 ["Setext headings"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K160 ["Foo *bar
baz*
====
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 115
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K161 ["<h1>Foo <em>bar
baz</em></h1>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K162 ["  Foo *bar
baz*	
====
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 116
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K163 ["Foo
-------------------------

Foo
=
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K164 ["<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 117
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K165 ["   Foo
---

  Foo
-----

  Foo
  ===
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K166 ["<h2>Foo</h2>
<h2>Foo</h2>
<h1>Foo</h1>
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 118
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K167 ["    Foo
    ---

    Foo
---
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K168 ["<pre><code>Foo
---

Foo
</code></pre>
<hr />
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 119
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K169 ["Foo
   ----      
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K170 ["<h2>Foo</h2>
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 120
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K132 ["<h1>foo</h1>
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K171 ["Foo
    ---
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 121
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K174 ["<p>Foo
= =</p>
<p>Foo</p>
<hr />
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 122
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K175 ["Foo  
-----
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K172 ["<p>Foo
---</p>
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 123
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R13 K176 ["Foo\
----
"]
  SETTABLEKS R13 R12 K0 ["markdown"]
  LOADK R13 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R13 R12 K1 ["html"]
  LOADN R13 124
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R13 R12 K3 ["section"]
  DUPTABLE R13 K4 [{"markdown", "html", "id", "section"}]
  LOADK R14 K177 ["<h2>Foo\</h2>
"]
  SETTABLEKS R14 R13 K0 ["markdown"]
  LOADK R14 K37 ["<p>foo<br />
bar</p>
"]
  SETTABLEKS R14 R13 K1 ["html"]
  LOADN R14 125
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R14 R13 K3 ["section"]
  DUPTABLE R14 K4 [{"markdown", "html", "id", "section"}]
  LOADK R15 K178 ["`Foo
----
`

<a title=\"a lot
---
of dashes\"/>
"]
  SETTABLEKS R15 R14 K0 ["markdown"]
  LOADK R15 K179 ["<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
"]
  SETTABLEKS R15 R14 K1 ["html"]
  LOADN R15 126
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R15 R14 K3 ["section"]
  DUPTABLE R15 K4 [{"markdown", "html", "id", "section"}]
  LOADK R16 K180 ["> Foo
---
"]
  SETTABLEKS R16 R15 K0 ["markdown"]
  LOADK R16 K179 ["<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
"]
  SETTABLEKS R16 R15 K1 ["html"]
  LOADN R16 127
  SETTABLEKS R16 R15 K2 ["id"]
  LOADK R16 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R16 R15 K3 ["section"]
  DUPTABLE R16 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K181 ["<blockquote>
<p>Foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R17 R16 K0 ["markdown"]
  LOADK R17 K182 ["> foo
bar
===
"]
  SETTABLEKS R17 R16 K1 ["html"]
  LOADN R17 128
  SETTABLEKS R17 R16 K2 ["id"]
  LOADK R17 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R17 R16 K3 ["section"]
  SETLIST R0 R1 16 [625]
  DUPTABLE R1 K4 [{"markdown", "html", "id", "section"}]
  LOADK R2 K183 ["<blockquote>
<p>foo
bar
===</p>
</blockquote>
"]
  SETTABLEKS R2 R1 K0 ["markdown"]
  LOADK R2 K184 ["- Foo
---
"]
  SETTABLEKS R2 R1 K1 ["html"]
  LOADN R2 129
  SETTABLEKS R2 R1 K2 ["id"]
  LOADK R2 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R2 R1 K3 ["section"]
  DUPTABLE R2 K4 [{"markdown", "html", "id", "section"}]
  LOADK R3 K185 ["<ul>
<li>Foo</li>
</ul>
<hr />
"]
  SETTABLEKS R3 R2 K0 ["markdown"]
  LOADK R3 K186 ["Foo
Bar
---
"]
  SETTABLEKS R3 R2 K1 ["html"]
  LOADN R3 130
  SETTABLEKS R3 R2 K2 ["id"]
  LOADK R3 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R3 R2 K3 ["section"]
  DUPTABLE R3 K4 [{"markdown", "html", "id", "section"}]
  LOADK R4 K187 ["<h2>Foo
Bar</h2>
"]
  SETTABLEKS R4 R3 K0 ["markdown"]
  LOADK R4 K188 ["---
Foo
---
Bar
---
Baz
"]
  SETTABLEKS R4 R3 K1 ["html"]
  LOADN R4 131
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R4 R3 K3 ["section"]
  DUPTABLE R4 K4 [{"markdown", "html", "id", "section"}]
  LOADK R5 K189 ["<hr />
<h2>Foo</h2>
<h2>Bar</h2>
<p>Baz</p>
"]
  SETTABLEKS R5 R4 K0 ["markdown"]
  LOADK R5 K190 ["
====
"]
  SETTABLEKS R5 R4 K1 ["html"]
  LOADN R5 132
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R5 R4 K3 ["section"]
  DUPTABLE R5 K4 [{"markdown", "html", "id", "section"}]
  LOADK R6 K191 ["<p>====</p>
"]
  SETTABLEKS R6 R5 K0 ["markdown"]
  LOADK R6 K192 ["---
---
"]
  SETTABLEKS R6 R5 K1 ["html"]
  LOADN R6 133
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R6 R5 K3 ["section"]
  DUPTABLE R6 K4 [{"markdown", "html", "id", "section"}]
  LOADK R7 K193 ["<hr />
<hr />
"]
  SETTABLEKS R7 R6 K0 ["markdown"]
  LOADK R7 K194 ["- foo
-----
"]
  SETTABLEKS R7 R6 K1 ["html"]
  LOADN R7 134
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R7 R6 K3 ["section"]
  DUPTABLE R7 K4 [{"markdown", "html", "id", "section"}]
  LOADK R8 K195 ["<ul>
<li>foo</li>
</ul>
<hr />
"]
  SETTABLEKS R8 R7 K0 ["markdown"]
  LOADK R8 K144 ["<h3>foo</h3>
"]
  SETTABLEKS R8 R7 K1 ["html"]
  LOADN R8 135
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K173 ["Foo
= =

Foo
--- -
"]
  SETTABLEKS R8 R7 K3 ["section"]
  DUPTABLE R8 K4 [{"markdown", "html", "id", "section"}]
  LOADK R9 K196 ["    foo
---
"]
  SETTABLEKS R9 R8 K0 ["markdown"]
  LOADK R9 K197 ["<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R9 R8 K1 ["html"]
  LOADN R9 136
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K198 ["> foo
-----
"]
  SETTABLEKS R9 R8 K3 ["section"]
  DUPTABLE R9 K4 [{"markdown", "html", "id", "section"}]
  LOADK R10 K199 ["<blockquote>
<p>foo</p>
</blockquote>
<hr />
"]
  SETTABLEKS R10 R9 K0 ["markdown"]
  LOADK R10 K197 ["<pre><code>foo
</code></pre>
<hr />
"]
  SETTABLEKS R10 R9 K1 ["html"]
  LOADN R10 137
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K198 ["> foo
-----
"]
  SETTABLEKS R10 R9 K3 ["section"]
  DUPTABLE R10 K4 [{"markdown", "html", "id", "section"}]
  LOADK R11 K200 ["\> foo
------
"]
  SETTABLEKS R11 R10 K0 ["markdown"]
  LOADK R11 K201 ["<h2>&gt; foo</h2>
"]
  SETTABLEKS R11 R10 K1 ["html"]
  LOADN R11 138
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R11 R10 K3 ["section"]
  DUPTABLE R11 K4 [{"markdown", "html", "id", "section"}]
  LOADK R12 K203 ["<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
"]
  SETTABLEKS R12 R11 K0 ["markdown"]
  LOADK R12 K204 ["Foo
bar

---

baz
"]
  SETTABLEKS R12 R11 K1 ["html"]
  LOADN R12 139
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R12 R11 K3 ["section"]
  DUPTABLE R12 K4 [{"markdown", "html", "id", "section"}]
  LOADK R17 K205 ["<p>Foo
bar</p>
<hr />
<p>baz</p>
"]
  SETTABLEKS R17 R12 K0 ["markdown"]
  LOADK R17 K206 ["Foo
bar
* * *
baz
"]
  SETTABLEKS R17 R12 K1 ["html"]
  LOADN R17 140
  SETTABLEKS R17 R12 K2 ["id"]
  LOADK R17 K202 ["Foo

bar
---
baz
"]
  SETTABLEKS R17 R12 K3 ["section"]
  SETLIST R0 R1 12 [641]
  RETURN R0 1
