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
       78 GETTABLEKS                       R5 R0 K21 ["validation"]
       80 JUMPIFEQKNIL                     R5 ; [+33]
       82 GETUPVAL                         R6 2
       83 GETTABLEKS                       R6 R6 K22 ["evaluateValidation"]
       85 MOVE                             R7 R5
       86 MOVE                             R8 R4
       87 CALL                             R6 2 1
       88 JUMPIF                           R6 ; [+25]
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K23 ["summarizeFailures"]
       92 MOVE                             R8 R5
       93 MOVE                             R9 R4
       94 CALL                             R7 2 1
       95 GETUPVAL                         R8 1
       96 CALL                             R8 0 1
       97 LOADK                            R11 K24 ["Submitted values did not satisfy the requirements: %*."]
       98 MOVE                             R13 R7
       99 NAMECALL                         R11 R11 K25 ["format"]
      101 CALL                             R11 2 1
      102 MOVE                             R10 R11
      103 NAMECALL                         R8 R8 K18 ["addText"]
      105 CALL                             R8 2 1
      106 LOADB                            R10 1
      107 NAMECALL                         R8 R8 K26 ["setError"]
      109 CALL                             R8 2 1
      110 NAMECALL                         R8 R8 K20 ["build"]
      112 CALL                             R8 1 -1
      113 RETURN                           R8 -1
      114 DUPTABLE                         R6 K29 [{["dismissed"] = False, ["values"]}]
      115 SETTABLEKS                       R4 R6 K28 ["values"]
      117 GETUPVAL                         R7 1
      118 CALL                             R7 0 1
      119 GETUPVAL                         R9 3
      120 MOVE                             R11 R6
      121 NAMECALL                         R9 R9 K30 ["JSONEncode"]
      123 CALL                             R9 2 -1
      124 NAMECALL                         R7 R7 K18 ["addText"]
      126 CALL                             R7 -1 1
      127 MOVE                             R9 R6
      128 NAMECALL                         R7 R7 K19 ["setStructuredContent"]
      130 CALL                             R7 2 1
      131 NAMECALL                         R7 R7 K20 ["build"]
      133 CALL                             R7 1 -1
      134 RETURN                           R7 -1

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
       27 NEWTABLE                         R7 0 12
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
       46 LOADK                            R18 K20 ["## Result"]
       47 LOADK                            R19 K21 ["On submit, returns `values`: a map of each field's `name` to the entered value (e.g. `{ \"prompt\": \"a castle\", \"count\": 3 }`). On cancel, returns `dismissed: true` and no values."]
       48 SETLIST                          R7 R8 12 [1]
       50 LOADK                            R8 K22 ["\n"]
       51 CALL                             R6 2 -1
       52 NAMECALL                         R4 R4 K23 ["setDescription"]
       54 CALL                             R4 -1 1
       55 LOADK                            R6 K24 ["formId"]
       56 DUPTABLE                         R7 K29 [{["type"] = "string", ["description"] = "Client-managed identifier selecting a known form's presentation (heading, labels, wizard). Set by slash-command flows; leave unset when authoring a form directly."}]
       57 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
       59 CALL                             R4 3 1
       60 LOADK                            R6 K31 ["fields"]
       61 DUPTABLE                         R7 K35 [{["type"] = "array", ["description"] = "The fields to collect, in display order. A field only describes one input; cross-field requirements go in the top-level `validation` argument, never inside a field.", ["items"]}]
       62 DUPTABLE                         R8 K41 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
       63 DUPTABLE                         R9 K46 [{"name", "inputType", "initialValue", "options"}]
       64 DUPTABLE                         R10 K48 [{["type"] = "string", ["description"] = "Identifier for this field; returned with the entered value."}]
       65 SETTABLEKS                       R10 R9 K42 ["name"]
       67 DUPTABLE                         R10 K50 [{["type"] = "string", ["description"], ["enum"]}]
       68 LOADK                            R12 K11 [""]
       69 LOADK                            R16 K51 ["What the field collects: '%*', '%*', '%*', "]
       70 GETUPVAL                         R18 8
       71 GETTABLEKS                       R18 R18 K52 ["String"]
       73 GETUPVAL                         R19 8
       74 GETTABLEKS                       R19 R19 K53 ["Number"]
       76 GETUPVAL                         R20 8
       77 GETTABLEKS                       R20 R20 K54 ["Boolean"]
       79 NAMECALL                         R16 R16 K18 ["format"]
       81 CALL                             R16 4 1
       82 MOVE                             R13 R16
       83 LOADK                            R16 K55 ["'%*' (a list of strings), '%*' (exactly one of 'options'), "]
       84 GETUPVAL                         R18 8
       85 GETTABLEKS                       R18 R18 K56 ["Array"]
       87 GETUPVAL                         R19 8
       88 GETTABLEKS                       R19 R19 K57 ["Option"]
       90 NAMECALL                         R16 R16 K18 ["format"]
       92 CALL                             R16 3 1
       93 MOVE                             R14 R16
       94 LOADK                            R16 K58 ["'%*', or '%*' (a picked instance)."]
       95 GETUPVAL                         R18 8
       96 GETTABLEKS                       R18 R18 K59 ["Image"]
       98 GETUPVAL                         R19 8
       99 GETTABLEKS                       R19 R19 K60 ["Instance"]
      101 NAMECALL                         R16 R16 K18 ["format"]
      103 CALL                             R16 3 1
      104 MOVE                             R15 R16
      105 CONCAT                           R11 R12 R15
      106 SETTABLEKS                       R11 R10 K27 ["description"]
      108 NEWTABLE                         R11 0 7
      110 GETUPVAL                         R12 8
      111 GETTABLEKS                       R12 R12 K56 ["Array"]
      113 GETUPVAL                         R13 8
      114 GETTABLEKS                       R13 R13 K54 ["Boolean"]
      116 GETUPVAL                         R14 8
      117 GETTABLEKS                       R14 R14 K59 ["Image"]
      119 GETUPVAL                         R15 8
      120 GETTABLEKS                       R15 R15 K60 ["Instance"]
      122 GETUPVAL                         R16 8
      123 GETTABLEKS                       R16 R16 K53 ["Number"]
      125 GETUPVAL                         R17 8
      126 GETTABLEKS                       R17 R17 K57 ["Option"]
      128 GETUPVAL                         R18 8
      129 GETTABLEKS                       R18 R18 K52 ["String"]
      131 SETLIST                          R11 R12 7 [1]
      133 SETTABLEKS                       R11 R10 K49 ["enum"]
      135 SETTABLEKS                       R10 R9 K43 ["inputType"]
      137 DUPTABLE                         R10 K62 [{["description"] = "Optional starting value, matching inputType."}]
      138 SETTABLEKS                       R10 R9 K44 ["initialValue"]
      140 DUPTABLE                         R10 K63 [{["type"] = "array", ["description"], ["items"]}]
      141 LOADK                            R12 K64 ["Required when inputType='%*': the ids to choose exactly one of."]
      142 GETUPVAL                         R14 8
      143 GETTABLEKS                       R14 R14 K57 ["Option"]
      145 NAMECALL                         R12 R12 K18 ["format"]
      147 CALL                             R12 2 1
      148 MOVE                             R11 R12
      149 SETTABLEKS                       R11 R10 K27 ["description"]
      151 DUPTABLE                         R11 K65 [{["type"] = "string"}]
      152 SETTABLEKS                       R11 R10 K34 ["items"]
      154 SETTABLEKS                       R10 R9 K45 ["options"]
      156 SETTABLEKS                       R9 R8 K39 ["properties"]
      158 NEWTABLE                         R9 0 2
      160 LOADK                            R10 K42 ["name"]
      161 LOADK                            R11 K43 ["inputType"]
      162 SETLIST                          R9 R10 2 [1]
      164 SETTABLEKS                       R9 R8 K40 ["required"]
      166 SETTABLEKS                       R8 R7 K34 ["items"]
      168 NAMECALL                         R4 R4 K66 ["addArgument"]
      170 CALL                             R4 3 1
      171 LOADK                            R6 K67 ["validation"]
      172 DUPTABLE                         R7 K69 [{["type"] = "object", ["description"] = "Top-level argument, a sibling of `fields` (NOT a property of any field). Optional rule the entered values must satisfy before the form can be submitted; the tool also re-checks it on submit and errors if unmet. A rule is an object with a `kind`. Leaf rules inspect one field: 'present' (`field` non-empty), 'equals' (`field` == `value`), 'range' (a number `field` within `min`/`max`, or an array `field` whose item count is within `min`/`max`; both bounds inclusive and optional). Combinators nest other rules: 'all'/'any' take a `rules` array, 'not' takes a single `rule`, 'branch' reads `field` and applies the matching rule in `cases` (with optional `default`). Constants: 'always' / 'never'. Example - require both a prompt and an in-range count: { \"kind\": \"all\", \"rules\": [ { \"kind\": \"present\", \"field\": \"prompt\" }, { \"kind\": \"range\", \"field\": \"count\", \"min\": 1, \"max\": 10 } ] }.", ["properties"], ["required"]}]
      173 DUPTABLE                         R8 K79 [{"kind", "field", "value", "min", "max", "rules", "rule", "cases", "default"}]
      174 DUPTABLE                         R9 K81 [{["type"] = "string", ["enum"], ["description"] = "Which rule to apply."}]
      175 NEWTABLE                         R10 0 9
      177 GETUPVAL                         R11 9
      178 GETTABLEKS                       R11 R11 K82 ["All"]
      180 GETUPVAL                         R12 9
      181 GETTABLEKS                       R12 R12 K83 ["Always"]
      183 GETUPVAL                         R13 9
      184 GETTABLEKS                       R13 R13 K84 ["Any"]
      186 GETUPVAL                         R14 9
      187 GETTABLEKS                       R14 R14 K85 ["Branch"]
      189 GETUPVAL                         R15 9
      190 GETTABLEKS                       R15 R15 K86 ["Equals"]
      192 GETUPVAL                         R16 9
      193 GETTABLEKS                       R16 R16 K87 ["Never"]
      195 GETUPVAL                         R17 9
      196 GETTABLEKS                       R17 R17 K88 ["Not"]
      198 GETUPVAL                         R18 9
      199 GETTABLEKS                       R18 R18 K89 ["Present"]
      201 GETUPVAL                         R19 9
      202 GETTABLEKS                       R19 R19 K90 ["Range"]
      204 SETLIST                          R10 R11 9 [1]
      206 SETTABLEKS                       R10 R9 K49 ["enum"]
      208 SETTABLEKS                       R9 R8 K70 ["kind"]
      210 DUPTABLE                         R9 K92 [{["type"] = "string", ["description"] = "For present/equals/range/branch: the field name to inspect."}]
      211 SETTABLEKS                       R9 R8 K71 ["field"]
      213 DUPTABLE                         R9 K94 [{["description"] = "For equals: the value `field` must equal."}]
      214 SETTABLEKS                       R9 R8 K72 ["value"]
      216 DUPTABLE                         R9 K97 [{["type"] = "number", ["description"] = "For range: inclusive lower bound on the number, or on an array field's item count (optional)."}]
      217 SETTABLEKS                       R9 R8 K73 ["min"]
      219 DUPTABLE                         R9 K99 [{["type"] = "number", ["description"] = "For range: inclusive upper bound on the number, or on an array field's item count (optional)."}]
      220 SETTABLEKS                       R9 R8 K74 ["max"]
      222 DUPTABLE                         R9 K101 [{["type"] = "array", ["description"] = "For all/any: the nested rules to combine."}]
      223 SETTABLEKS                       R9 R8 K75 ["rules"]
      225 DUPTABLE                         R9 K103 [{["type"] = "object", ["description"] = "For not: the nested rule that must NOT pass."}]
      226 SETTABLEKS                       R9 R8 K76 ["rule"]
      228 DUPTABLE                         R9 K105 [{["type"] = "object", ["description"] = "For branch: map from the branch field's value to a nested rule."}]
      229 SETTABLEKS                       R9 R8 K77 ["cases"]
      231 DUPTABLE                         R9 K107 [{["type"] = "object", ["description"] = "For branch: the nested rule applied when no case matches."}]
      232 SETTABLEKS                       R9 R8 K78 ["default"]
      234 SETTABLEKS                       R8 R7 K39 ["properties"]
      236 NEWTABLE                         R8 0 1
      238 LOADK                            R9 K70 ["kind"]
      239 SETLIST                          R8 R9 1 [1]
      241 SETTABLEKS                       R8 R7 K40 ["required"]
      243 NAMECALL                         R4 R4 K30 ["addOptionalArgument"]
      245 CALL                             R4 3 1
      246 DUPTABLE                         R6 K115 [{["title"] = "Ask For Input", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      247 NAMECALL                         R4 R4 K116 ["setAnnotations"]
      249 CALL                             R4 2 1
      250 MOVE                             R6 R3
      251 NAMECALL                         R4 R4 K117 ["setHandler"]
      253 CALL                             R4 2 1
      254 NAMECALL                         R4 R4 K118 ["build"]
      256 CALL                             R4 1 1
      257 DUPTABLE                         R5 K121 [{"definition", "toolCallOptions"}]
      258 SETTABLEKS                       R4 R5 K119 ["definition"]
      260 DUPTABLE                         R6 K124 [{["timeout"] = 200000000}]
      261 SETTABLEKS                       R6 R5 K120 ["toolCallOptions"]
      263 RETURN                           R5 1

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
