PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Field"]
        3 GETTABLEKS                       R4 R4 K1 ["Values"]
        5 NAMECALL                         R2 R0 K2 ["Get"]
        7 CALL                             R2 2 1
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R6 R2
       10 GETIMPORT                        R5 K4 [typeof]
       12 CALL                             R5 1 1
       13 JUMPIFEQKS                       R5 K5 ["string"] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       19 LOADK                            R5 K6 ["AskInput submitted without a Values payload"]
       20 GETIMPORT                        R3 K8 [assert]
       22 CALL                             R3 2 0
       23 GETIMPORT                        R3 K10 [pcall]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R2
       28 CALL                             R3 1 2
       29 MOVE                             R6 R3
       30 JUMPIFNOT                        R6 ; [+9]
       31 FASTCALL1                        TYPEOF R4 ; [+3]
       32 MOVE                             R8 R4
       33 GETIMPORT                        R7 K4 [typeof]
       35 CALL                             R7 1 1
       36 JUMPIFEQKS                       R7 K11 ["table"] ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       42 LOADK                            R7 K12 ["AskInput Values payload was not decodable JSON"]
       43 GETIMPORT                        R5 K8 [assert]
       45 CALL                             R5 2 0
       46 NEWTABLE                         R5 0 0
       48 MOVE                             R6 R1
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 FORGPREP                         R6
       52 GETTABLEKS                       R11 R10 K13 ["name"]
       54 GETTABLEKS                       R13 R10 K13 ["name"]
       56 GETTABLE                         R12 R4 R13
       57 SETTABLE                         R12 R5 R11
       58 FORGLOOP                         R6 2 ; [-7]
       60 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Field"]
        3 GETTABLEKS                       R4 R4 K1 ["Submitted"]
        5 NAMECALL                         R2 R0 K2 ["Wait"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKB                       R2 TRUE ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["toolUseId"]
        2 GETTABLEKS                       R3 R1 K1 ["fields"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["find"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K3 ["Scope"]
       10 MOVE                             R6 R2
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 NAMECALL                         R5 R4 K4 ["Destroy"]
       15 CALL                             R5 1 0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["new"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K3 ["Scope"]
       22 MOVE                             R7 R2
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K7 [pcall]
       26 GETUPVAL                         R7 2
       27 MOVE                             R8 R5
       28 MOVE                             R9 R3
       29 CALL                             R6 3 2
       30 NAMECALL                         R8 R5 K4 ["Destroy"]
       32 CALL                             R8 1 0
       33 JUMPIF                           R6 ; [+5]
       34 GETIMPORT                        R8 K9 [error]
       36 MOVE                             R9 R7
       37 LOADN                            R10 0
       38 CALL                             R8 2 0
       39 RETURN                           R7 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 LOADB                            R4 0
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R6 R2
        8 GETIMPORT                        R5 K2 [typeof]
       10 CALL                             R5 1 1
       11 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R2 K4 [""] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       19 LOADK                            R5 K5 ["Missing toolUseId"]
       20 GETIMPORT                        R3 K7 [assert]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R3 R0 K8 ["fields"]
       25 MOVE                             R5 R3
       26 JUMPIFNOT                        R5 ; [+9]
       27 FASTCALL1                        TYPEOF R3 ; [+3]
       28 MOVE                             R7 R3
       29 GETIMPORT                        R6 K2 [typeof]
       31 CALL                             R6 1 1
       32 JUMPIFEQKS                       R6 K9 ["table"] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       38 LOADK                            R6 K10 ["Missing fields"]
       39 GETIMPORT                        R4 K7 [assert]
       41 CALL                             R4 2 0
       42 LENGTH                           R6 R3
       43 LOADN                            R7 0
       44 JUMPIFLT                         R7 R6 ; [+2]
       46 LOADB                            R5 0 +1
       47 LOADB                            R5 1
       48 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       50 LOADK                            R6 K11 ["At least one input field is required"]
       51 GETIMPORT                        R4 K7 [assert]
       53 CALL                             R4 2 0
       54 GETUPVAL                         R4 0
       55 LOADNIL                          R5
       56 DUPTABLE                         R6 K13 [{"toolUseId", "fields"}]
       57 SETTABLEKS                       R2 R6 K12 ["toolUseId"]
       59 SETTABLEKS                       R3 R6 K8 ["fields"]
       61 CALL                             R4 2 1
       62 JUMPIF                           R4 ; [+15]
       63 DUPTABLE                         R5 K16 [{["dismissed"] = True}]
       64 GETUPVAL                         R6 1
       65 CALL                             R6 0 1
       66 LOADK                            R8 K17 ["The user cancelled the input request."]
       67 NAMECALL                         R6 R6 K18 ["addText"]
       69 CALL                             R6 2 1
       70 MOVE                             R8 R5
       71 NAMECALL                         R6 R6 K19 ["setStructuredContent"]
       73 CALL                             R6 2 1
       74 NAMECALL                         R6 R6 K20 ["build"]
       76 CALL                             R6 1 -1
       77 RETURN                           R6 -1
       78 GETUPVAL                         R5 2
       79 GETTABLEKS                       R5 R5 K21 ["validateFieldValues"]
       81 MOVE                             R6 R3
       82 MOVE                             R7 R4
       83 CALL                             R5 2 1
       84 JUMPIFEQKNIL                     R5 ; [+20]
       86 GETUPVAL                         R6 1
       87 CALL                             R6 0 1
       88 LOADK                            R9 K22 ["Submitted values had the wrong type: %*."]
       89 MOVE                             R11 R5
       90 NAMECALL                         R9 R9 K23 ["format"]
       92 CALL                             R9 2 1
       93 MOVE                             R8 R9
       94 NAMECALL                         R6 R6 K18 ["addText"]
       96 CALL                             R6 2 1
       97 LOADB                            R8 1
       98 NAMECALL                         R6 R6 K24 ["setError"]
      100 CALL                             R6 2 1
      101 NAMECALL                         R6 R6 K20 ["build"]
      103 CALL                             R6 1 -1
      104 RETURN                           R6 -1
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R6 R6 K25 ["desugarFields"]
      108 MOVE                             R7 R3
      109 GETTABLEKS                       R8 R0 K26 ["validation"]
      111 CALL                             R6 2 1
      112 JUMPIFEQKNIL                     R6 ; [+33]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R7 R7 K27 ["evaluateValidation"]
      117 MOVE                             R8 R6
      118 MOVE                             R9 R4
      119 CALL                             R7 2 1
      120 JUMPIF                           R7 ; [+25]
      121 GETUPVAL                         R8 2
      122 GETTABLEKS                       R8 R8 K28 ["summarizeFailures"]
      124 MOVE                             R9 R6
      125 MOVE                             R10 R4
      126 CALL                             R8 2 1
      127 GETUPVAL                         R9 1
      128 CALL                             R9 0 1
      129 LOADK                            R12 K29 ["Submitted values did not satisfy the requirements: %*."]
      130 MOVE                             R14 R8
      131 NAMECALL                         R12 R12 K23 ["format"]
      133 CALL                             R12 2 1
      134 MOVE                             R11 R12
      135 NAMECALL                         R9 R9 K18 ["addText"]
      137 CALL                             R9 2 1
      138 LOADB                            R11 1
      139 NAMECALL                         R9 R9 K24 ["setError"]
      141 CALL                             R9 2 1
      142 NAMECALL                         R9 R9 K20 ["build"]
      144 CALL                             R9 1 -1
      145 RETURN                           R9 -1
      146 DUPTABLE                         R7 K31 [{"values"}]
      147 SETTABLEKS                       R4 R7 K30 ["values"]
      149 GETUPVAL                         R8 1
      150 CALL                             R8 0 1
      151 GETUPVAL                         R10 3
      152 MOVE                             R12 R7
      153 NAMECALL                         R10 R10 K32 ["JSONEncode"]
      155 CALL                             R10 2 -1
      156 NAMECALL                         R8 R8 K18 ["addText"]
      158 CALL                             R8 -1 1
      159 MOVE                             R10 R7
      160 NAMECALL                         R8 R8 K19 ["setStructuredContent"]
      162 CALL                             R8 2 1
      163 NAMECALL                         R8 R8 K20 ["build"]
      165 CALL                             R8 1 -1
      166 RETURN                           R8 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["AskInputTool_waitForInputAsync"]
        3 DUPCLOSURE                       R5 K2 [PROTO_3]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        9 CALL                             R2 3 1
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 GETUPVAL                         R4 6
       16 GETTABLEKS                       R4 R4 K4 ["define"]
       18 CALL                             R4 0 1
       19 GETUPVAL                         R6 7
       20 GETTABLEKS                       R6 R6 K5 ["AskInput"]
       22 NAMECALL                         R4 R4 K6 ["setName"]
       24 CALL                             R4 2 1
       25 GETIMPORT                        R6 K9 [table.concat]
       27 NEWTABLE                         R7 0 20
       29 LOADK                            R8 K10 ["Presents a form to the user and returns the values they enter. Provide one field per value you need; the call blocks until the user submits or cancels."]
       30 LOADK                            R9 K11 [""]
       31 LOADK                            R10 K12 ["## When to use"]
       32 LOADK                            R11 K13 ["- A downstream action needs specific, typed inputs the user must supply or confirm (a name, a count, a picked instance, an uploaded image)."]
       33 LOADK                            R12 K14 ["- You want the user to review and adjust prefilled values before you act on them."]
       34 LOADK                            R13 K11 [""]
       35 LOADK                            R14 K15 ["## When NOT to use"]
       36 LOADK                            R16 K16 ["- You are resolving an ambiguous request (which approach? what scope? which target?) - use `%*` instead; it is built for bounded, one-per-ambiguity questions."]
       37 GETUPVAL                         R18 7
       38 GETTABLEKS                       R18 R18 K17 ["QuestionAnswer"]
       40 NAMECALL                         R16 R16 K18 ["format"]
       42 CALL                             R16 2 1
       43 MOVE                             R15 R16
       44 LOADK                            R16 K19 ["- A reasonable default exists - proceed, then offer to adjust."]
       45 LOADK                            R17 K11 [""]
       46 LOADK                            R18 K20 ["## Validating input"]
       47 LOADK                            R19 K21 ["Put static, single-field limits on the FIELD, not in `validation`:"]
       48 LOADK                            R20 K22 ["- Must be filled in -> set the field's `required: true`."]
       49 LOADK                            R21 K23 ["- A number's range, or an array's item count -> set the field's `min`/`max`."]
       50 LOADK                            R23 K24 ["- One of a fixed set -> use inputType='%*' with 'options'."]
       51 GETUPVAL                         R25 8
       52 GETTABLEKS                       R25 R25 K25 ["Option"]
       54 NAMECALL                         R23 R23 K18 ["format"]
       56 CALL                             R23 2 1
       57 MOVE                             R22 R23
       58 LOADK                            R23 K26 ["For example, a required count from 1 to 10 is just `{ \"name\": \"count\", \"inputType\": \"number\", \"required\": true, \"min\": 1, \"max\": 10 }` - do NOT write a `validation` rule for this."]
       59 SETLIST                          R7 R8 16 [1]
       61 LOADK                            R8 K27 ["Use the top-level `validation` argument ONLY for requirements that span more than one field (e.g. \"a prompt is required, but only when mode = text\"). Field limits and `validation` rules are all enforced together (combined with 'all'), so if a rule and a field's sugar constrain the same field the stricter of the two wins."]
       62 LOADK                            R9 K11 [""]
       63 LOADK                            R10 K28 ["## Result"]
       64 LOADK                            R11 K29 ["On submit, returns `values`: a map of each field's `name` to the entered value (e.g. `{ \"prompt\": \"a castle\", \"count\": 3 }`). On cancel, returns `dismissed: true` and no values."]
       65 SETLIST                          R7 R8 4 [17]
       67 LOADK                            R8 K30 ["\n"]
       68 CALL                             R6 2 -1
       69 NAMECALL                         R4 R4 K31 ["setDescription"]
       71 CALL                             R4 -1 1
       72 LOADK                            R6 K32 ["formId"]
       73 DUPTABLE                         R7 K37 [{["type"] = "string", ["description"] = "Client-managed identifier selecting a known form's presentation (heading, labels, wizard). Set by slash-command flows; leave unset when authoring a form directly."}]
       74 NAMECALL                         R4 R4 K38 ["addOptionalArgument"]
       76 CALL                             R4 3 1
       77 LOADK                            R6 K39 ["fields"]
       78 DUPTABLE                         R7 K43 [{["type"] = "array", ["description"] = "The fields to collect, in display order. A field only describes one input; cross-field requirements go in the top-level `validation` argument, never inside a field.", ["items"]}]
       79 DUPTABLE                         R8 K49 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
       80 DUPTABLE                         R9 K56 [{"name", "inputType", "initialValue", "required", "min", "max", "options"}]
       81 DUPTABLE                         R10 K58 [{["type"] = "string", ["description"] = "Identifier for this field; returned with the entered value."}]
       82 SETTABLEKS                       R10 R9 K50 ["name"]
       84 DUPTABLE                         R10 K60 [{["type"] = "string", ["description"], ["enum"]}]
       85 LOADK                            R12 K11 [""]
       86 LOADK                            R16 K61 ["What the field collects: '%*', '%*', '%*', "]
       87 GETUPVAL                         R18 8
       88 GETTABLEKS                       R18 R18 K62 ["String"]
       90 GETUPVAL                         R19 8
       91 GETTABLEKS                       R19 R19 K63 ["Number"]
       93 GETUPVAL                         R20 8
       94 GETTABLEKS                       R20 R20 K64 ["Boolean"]
       96 NAMECALL                         R16 R16 K18 ["format"]
       98 CALL                             R16 4 1
       99 MOVE                             R13 R16
      100 LOADK                            R16 K65 ["'%*' (a list of strings), '%*' (exactly one of 'options'), "]
      101 GETUPVAL                         R18 8
      102 GETTABLEKS                       R18 R18 K66 ["Array"]
      104 GETUPVAL                         R19 8
      105 GETTABLEKS                       R19 R19 K25 ["Option"]
      107 NAMECALL                         R16 R16 K18 ["format"]
      109 CALL                             R16 3 1
      110 MOVE                             R14 R16
      111 LOADK                            R16 K67 ["'%*', or '%*' (a picked instance)."]
      112 GETUPVAL                         R18 8
      113 GETTABLEKS                       R18 R18 K68 ["Image"]
      115 GETUPVAL                         R19 8
      116 GETTABLEKS                       R19 R19 K69 ["Instance"]
      118 NAMECALL                         R16 R16 K18 ["format"]
      120 CALL                             R16 3 1
      121 MOVE                             R15 R16
      122 CONCAT                           R11 R12 R15
      123 SETTABLEKS                       R11 R10 K35 ["description"]
      125 NEWTABLE                         R11 0 7
      127 GETUPVAL                         R12 8
      128 GETTABLEKS                       R12 R12 K66 ["Array"]
      130 GETUPVAL                         R13 8
      131 GETTABLEKS                       R13 R13 K64 ["Boolean"]
      133 GETUPVAL                         R14 8
      134 GETTABLEKS                       R14 R14 K68 ["Image"]
      136 GETUPVAL                         R15 8
      137 GETTABLEKS                       R15 R15 K69 ["Instance"]
      139 GETUPVAL                         R16 8
      140 GETTABLEKS                       R16 R16 K63 ["Number"]
      142 GETUPVAL                         R17 8
      143 GETTABLEKS                       R17 R17 K25 ["Option"]
      145 GETUPVAL                         R18 8
      146 GETTABLEKS                       R18 R18 K62 ["String"]
      148 SETLIST                          R11 R12 7 [1]
      150 SETTABLEKS                       R11 R10 K59 ["enum"]
      152 SETTABLEKS                       R10 R9 K51 ["inputType"]
      154 DUPTABLE                         R10 K71 [{["description"] = "Optional starting value, matching inputType."}]
      155 SETTABLEKS                       R10 R9 K52 ["initialValue"]
      157 DUPTABLE                         R10 K74 [{["type"] = "boolean", ["description"] = "If true, the field must have a value in the results (a non-empty string, a picked instance, at least one array item, or -- for a boolean -- either true or false). For a requirement that depends on another field's value, use the top-level `validation` argument instead."}]
      158 SETTABLEKS                       R10 R9 K48 ["required"]
      160 DUPTABLE                         R10 K76 [{["type"] = "number", ["description"]}]
      161 LOADK                            R12 K11 [""]
      162 LOADK                            R16 K77 ["For inputType='%*': inclusive lower bound on the value. "]
      163 GETUPVAL                         R18 8
      164 GETTABLEKS                       R18 R18 K63 ["Number"]
      166 NAMECALL                         R16 R16 K18 ["format"]
      168 CALL                             R16 2 1
      169 MOVE                             R13 R16
      170 LOADK                            R16 K78 ["For inputType='%*': minimum item count. "]
      171 GETUPVAL                         R18 8
      172 GETTABLEKS                       R18 R18 K66 ["Array"]
      174 NAMECALL                         R16 R16 K18 ["format"]
      176 CALL                             R16 2 1
      177 MOVE                             R14 R16
      178 LOADK                            R15 K79 ["Ignored for other types."]
      179 CONCAT                           R11 R12 R15
      180 SETTABLEKS                       R11 R10 K35 ["description"]
      182 SETTABLEKS                       R10 R9 K53 ["min"]
      184 DUPTABLE                         R10 K76 [{["type"] = "number", ["description"]}]
      185 LOADK                            R12 K11 [""]
      186 LOADK                            R16 K80 ["For inputType='%*': inclusive upper bound on the value. "]
      187 GETUPVAL                         R18 8
      188 GETTABLEKS                       R18 R18 K63 ["Number"]
      190 NAMECALL                         R16 R16 K18 ["format"]
      192 CALL                             R16 2 1
      193 MOVE                             R13 R16
      194 LOADK                            R16 K81 ["For inputType='%*': maximum item count. "]
      195 GETUPVAL                         R18 8
      196 GETTABLEKS                       R18 R18 K66 ["Array"]
      198 NAMECALL                         R16 R16 K18 ["format"]
      200 CALL                             R16 2 1
      201 MOVE                             R14 R16
      202 LOADK                            R15 K79 ["Ignored for other types."]
      203 CONCAT                           R11 R12 R15
      204 SETTABLEKS                       R11 R10 K35 ["description"]
      206 SETTABLEKS                       R10 R9 K54 ["max"]
      208 DUPTABLE                         R10 K82 [{["type"] = "array", ["description"], ["items"]}]
      209 LOADK                            R12 K83 ["Required when inputType='%*': the ids to choose exactly one of."]
      210 GETUPVAL                         R14 8
      211 GETTABLEKS                       R14 R14 K25 ["Option"]
      213 NAMECALL                         R12 R12 K18 ["format"]
      215 CALL                             R12 2 1
      216 MOVE                             R11 R12
      217 SETTABLEKS                       R11 R10 K35 ["description"]
      219 DUPTABLE                         R11 K84 [{["type"] = "string"}]
      220 SETTABLEKS                       R11 R10 K42 ["items"]
      222 SETTABLEKS                       R10 R9 K55 ["options"]
      224 SETTABLEKS                       R9 R8 K47 ["properties"]
      226 NEWTABLE                         R9 0 2
      228 LOADK                            R10 K50 ["name"]
      229 LOADK                            R11 K51 ["inputType"]
      230 SETLIST                          R9 R10 2 [1]
      232 SETTABLEKS                       R9 R8 K48 ["required"]
      234 SETTABLEKS                       R8 R7 K42 ["items"]
      236 NAMECALL                         R4 R4 K85 ["addArgument"]
      238 CALL                             R4 3 1
      239 LOADK                            R6 K86 ["validation"]
      240 DUPTABLE                         R7 K88 [{["type"] = "object", ["description"] = "Top-level argument, a sibling of `fields` (NOT a property of any field). For cross-field requirements ONLY - static single-field limits belong on the field via `required`/`min`/`max` (see the tool description's 'Validating input' section). Optional rule the entered values must satisfy before the form can be submitted; the tool also re-checks it on submit and errors if unmet. A rule is an object with a `kind`. Leaf rules inspect one field: 'nonEmpty' (`field` is filled in - a non-empty string/array, or a checked boolean), 'exists' (`field` has any value, including a boolean false), 'equals' (`field` == `value`), 'range' (a number `field` within `min`/`max`, or an array `field` whose item count is within `min`/`max`; both bounds inclusive and optional). Combinators nest other rules: 'all'/'any' take a `rules` array, 'not' takes a single `rule`, 'branch' reads `field` and applies the matching rule in `cases` (with optional `default`). Constants: 'always' / 'never'. Example - require a prompt only in text mode: { \"kind\": \"branch\", \"field\": \"promptMode\", \"cases\": { \"text\": { \"kind\": \"nonEmpty\", \"field\": \"textPrompt\" } } }.", ["properties"], ["required"]}]
      241 DUPTABLE                         R8 K96 [{"kind", "field", "value", "min", "max", "rules", "rule", "cases", "default"}]
      242 DUPTABLE                         R9 K98 [{["type"] = "string", ["enum"], ["description"] = "Which rule to apply."}]
      243 NEWTABLE                         R10 0 10
      245 GETUPVAL                         R11 9
      246 GETTABLEKS                       R11 R11 K99 ["All"]
      248 GETUPVAL                         R12 9
      249 GETTABLEKS                       R12 R12 K100 ["Always"]
      251 GETUPVAL                         R13 9
      252 GETTABLEKS                       R13 R13 K101 ["Any"]
      254 GETUPVAL                         R14 9
      255 GETTABLEKS                       R14 R14 K102 ["Branch"]
      257 GETUPVAL                         R15 9
      258 GETTABLEKS                       R15 R15 K103 ["Equals"]
      260 GETUPVAL                         R16 9
      261 GETTABLEKS                       R16 R16 K104 ["Exists"]
      263 GETUPVAL                         R17 9
      264 GETTABLEKS                       R17 R17 K105 ["Never"]
      266 GETUPVAL                         R18 9
      267 GETTABLEKS                       R18 R18 K106 ["Not"]
      269 GETUPVAL                         R19 9
      270 GETTABLEKS                       R19 R19 K107 ["NonEmpty"]
      272 GETUPVAL                         R20 9
      273 GETTABLEKS                       R20 R20 K108 ["Range"]
      275 SETLIST                          R10 R11 10 [1]
      277 SETTABLEKS                       R10 R9 K59 ["enum"]
      279 SETTABLEKS                       R9 R8 K89 ["kind"]
      281 DUPTABLE                         R9 K110 [{["type"] = "string", ["description"] = "For nonEmpty/exists/equals/range/branch: the field name to inspect."}]
      282 SETTABLEKS                       R9 R8 K90 ["field"]
      284 DUPTABLE                         R9 K112 [{["description"] = "For equals: the value `field` must equal."}]
      285 SETTABLEKS                       R9 R8 K91 ["value"]
      287 DUPTABLE                         R9 K114 [{["type"] = "number", ["description"] = "For range: inclusive lower bound on the number, or on an array field's item count (optional)."}]
      288 SETTABLEKS                       R9 R8 K53 ["min"]
      290 DUPTABLE                         R9 K116 [{["type"] = "number", ["description"] = "For range: inclusive upper bound on the number, or on an array field's item count (optional)."}]
      291 SETTABLEKS                       R9 R8 K54 ["max"]
      293 DUPTABLE                         R9 K118 [{["type"] = "array", ["description"] = "For all/any: the nested rules to combine."}]
      294 SETTABLEKS                       R9 R8 K92 ["rules"]
      296 DUPTABLE                         R9 K120 [{["type"] = "object", ["description"] = "For not: the nested rule that must NOT pass."}]
      297 SETTABLEKS                       R9 R8 K93 ["rule"]
      299 DUPTABLE                         R9 K122 [{["type"] = "object", ["description"] = "For branch: map from the branch field's value to a nested rule."}]
      300 SETTABLEKS                       R9 R8 K94 ["cases"]
      302 DUPTABLE                         R9 K124 [{["type"] = "object", ["description"] = "For branch: the nested rule applied when no case matches."}]
      303 SETTABLEKS                       R9 R8 K95 ["default"]
      305 SETTABLEKS                       R8 R7 K47 ["properties"]
      307 NEWTABLE                         R8 0 1
      309 LOADK                            R9 K89 ["kind"]
      310 SETLIST                          R8 R9 1 [1]
      312 SETTABLEKS                       R8 R7 K48 ["required"]
      314 NAMECALL                         R4 R4 K38 ["addOptionalArgument"]
      316 CALL                             R4 3 1
      317 DUPTABLE                         R6 K132 [{["title"] = "Ask For Input", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      318 NAMECALL                         R4 R4 K133 ["setAnnotations"]
      320 CALL                             R4 2 1
      321 MOVE                             R6 R3
      322 NAMECALL                         R4 R4 K134 ["setHandler"]
      324 CALL                             R4 2 1
      325 NAMECALL                         R4 R4 K135 ["build"]
      327 CALL                             R4 1 1
      328 DUPTABLE                         R5 K138 [{"definition", "toolCallOptions"}]
      329 SETTABLEKS                       R4 R5 K136 ["definition"]
      331 DUPTABLE                         R6 K141 [{["timeout"] = 200000000}]
      332 SETTABLEKS                       R6 R5 K137 ["toolCallOptions"]
      334 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["ModelContextProtocol"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R5 K13 ["AskInput"]
       26 GETTABLEKS                       R5 R5 K14 ["AskInputChannel"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [require]
       31 GETTABLEKS                       R6 R0 K12 ["Util"]
       33 GETTABLEKS                       R6 R6 K13 ["AskInput"]
       35 GETTABLEKS                       R6 R6 K15 ["AskInputTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Util"]
       42 GETTABLEKS                       R7 R7 K16 ["InstanceChannel"]
       44 GETTABLEKS                       R7 R7 K16 ["InstanceChannel"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K17 ["Tools"]
       51 GETTABLEKS                       R8 R8 K18 ["ToolTypes"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Util"]
       58 GETTABLEKS                       R9 R9 K13 ["AskInput"]
       60 GETTABLEKS                       R9 R9 K19 ["Validation"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R3 K12 ["Util"]
       65 GETTABLEKS                       R9 R9 K20 ["ToolBuilder"]
       67 GETTABLEKS                       R10 R3 K12 ["Util"]
       69 GETTABLEKS                       R10 R10 K21 ["ToolResult"]
       71 GETTABLEKS                       R11 R7 K22 ["ToolNames"]
       73 GETTABLEKS                       R12 R5 K23 ["INPUT_TYPE"]
       75 GETTABLEKS                       R13 R5 K24 ["RULE_KIND"]
       77 DUPCLOSURE                       R14 K25 [PROTO_1]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R15 K26 [PROTO_2]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R14
       83 DUPCLOSURE                       R16 K27 [PROTO_5]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 RETURN                           R16 1
