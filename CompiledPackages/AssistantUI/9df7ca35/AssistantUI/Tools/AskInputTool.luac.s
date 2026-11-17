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
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R2
       26 FASTPCALL                        pcall 1 ; [+2]
       27 GETIMPORT                        R3 K10 [pcall]
       29 CALL                             R3 1 2
       30 MOVE                             R6 R3
       31 JUMPIFNOT                        R6 ; [+9]
       32 FASTCALL1                        TYPEOF R4 ; [+3]
       33 MOVE                             R8 R4
       34 GETIMPORT                        R7 K4 [typeof]
       36 CALL                             R7 1 1
       37 JUMPIFEQKS                       R7 K11 ["table"] ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       43 LOADK                            R7 K12 ["AskInput Values payload was not decodable JSON"]
       44 GETIMPORT                        R5 K8 [assert]
       46 CALL                             R5 2 0
       47 NEWTABLE                         R5 0 0
       49 MOVE                             R6 R1
       50 LOADNIL                          R7
       51 LOADNIL                          R8
       52 FORGPREP                         R6
       53 GETTABLEKS                       R11 R10 K13 ["name"]
       55 GETTABLEKS                       R13 R10 K13 ["name"]
       57 GETTABLE                         R12 R4 R13
       58 SETTABLE                         R12 R5 R11
       59 FORGLOOP                         R6 2 ; [-7]
       61 RETURN                           R5 1

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
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETTABLEKS                       R2 R0 K1 ["fields"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["find"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["Scope"]
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 NAMECALL                         R4 R3 K4 ["Destroy"]
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K5 ["new"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K3 ["Scope"]
       22 MOVE                             R6 R1
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 MOVE                             R7 R4
       26 MOVE                             R8 R2
       27 FASTPCALL                        pcall 3 ; [+2]
       28 GETIMPORT                        R5 K7 [pcall]
       30 CALL                             R5 3 2
       31 NAMECALL                         R7 R4 K4 ["Destroy"]
       33 CALL                             R7 1 0
       34 JUMPIF                           R5 ; [+5]
       35 GETIMPORT                        R7 K9 [error]
       37 MOVE                             R8 R6
       38 LOADN                            R9 0
       39 CALL                             R7 2 0
       40 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
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
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K12 ["FOCUSED"]
       58 DUPTABLE                         R7 K14 [{"toolUseId", "fields"}]
       59 SETTABLEKS                       R2 R7 K13 ["toolUseId"]
       61 SETTABLEKS                       R3 R7 K8 ["fields"]
       63 NAMECALL                         R4 R4 K15 ["InvokeAsync"]
       65 CALL                             R4 3 1
       66 JUMPIF                           R4 ; [+15]
       67 DUPTABLE                         R5 K18 [{["dismissed"] = True}]
       68 GETUPVAL                         R6 2
       69 CALL                             R6 0 1
       70 LOADK                            R8 K19 ["The user cancelled the input request."]
       71 NAMECALL                         R6 R6 K20 ["addText"]
       73 CALL                             R6 2 1
       74 MOVE                             R8 R5
       75 NAMECALL                         R6 R6 K21 ["setStructuredContent"]
       77 CALL                             R6 2 1
       78 NAMECALL                         R6 R6 K22 ["build"]
       80 CALL                             R6 1 -1
       81 RETURN                           R6 -1
       82 GETUPVAL                         R5 3
       83 GETTABLEKS                       R5 R5 K23 ["validateFieldValues"]
       85 MOVE                             R6 R3
       86 MOVE                             R7 R4
       87 CALL                             R5 2 1
       88 JUMPIFEQKNIL                     R5 ; [+19]
       90 GETUPVAL                         R6 2
       91 CALL                             R6 0 1
       92 LOADK                            R8 K24 ["Submitted values had the wrong type: %*."]
       93 MOVE                             R10 R5
       94 NAMECALL                         R8 R8 K25 ["format"]
       96 CALL                             R8 2 1
       97 NAMECALL                         R6 R6 K20 ["addText"]
       99 CALL                             R6 2 1
      100 LOADB                            R8 1
      101 NAMECALL                         R6 R6 K26 ["setError"]
      103 CALL                             R6 2 1
      104 NAMECALL                         R6 R6 K22 ["build"]
      106 CALL                             R6 1 -1
      107 RETURN                           R6 -1
      108 GETUPVAL                         R7 4
      109 GETTABLEKS                       R7 R7 K27 ["FFlagAssistantAskInputRequiredMarkers"]
      111 JUMPIFNOT                        R7 ; [+10]
      112 GETUPVAL                         R6 5
      113 GETTABLEKS                       R6 R6 K28 ["getSubmittedFields"]
      115 GETTABLEKS                       R7 R0 K29 ["formId"]
      117 MOVE                             R8 R3
      118 MOVE                             R9 R4
      119 DUPTABLE                         R10 K32 [{["isSubmitted"] = False}]
      120 CALL                             R6 4 1
      121 JUMP                             ; [+1]
      122 MOVE                             R6 R3
      123 GETUPVAL                         R7 3
      124 GETTABLEKS                       R7 R7 K33 ["desugarFields"]
      126 MOVE                             R8 R6
      127 GETTABLEKS                       R9 R0 K34 ["validation"]
      129 CALL                             R7 2 1
      130 JUMPIFEQKNIL                     R7 ; [+32]
      132 GETUPVAL                         R8 3
      133 GETTABLEKS                       R8 R8 K35 ["evaluateValidation"]
      135 MOVE                             R9 R7
      136 MOVE                             R10 R4
      137 CALL                             R8 2 1
      138 JUMPIF                           R8 ; [+24]
      139 GETUPVAL                         R9 3
      140 GETTABLEKS                       R9 R9 K36 ["summarizeFailures"]
      142 MOVE                             R10 R7
      143 MOVE                             R11 R4
      144 CALL                             R9 2 1
      145 GETUPVAL                         R10 2
      146 CALL                             R10 0 1
      147 LOADK                            R12 K37 ["Submitted values did not satisfy the requirements: %*."]
      148 MOVE                             R14 R9
      149 NAMECALL                         R12 R12 K25 ["format"]
      151 CALL                             R12 2 1
      152 NAMECALL                         R10 R10 K20 ["addText"]
      154 CALL                             R10 2 1
      155 LOADB                            R12 1
      156 NAMECALL                         R10 R10 K26 ["setError"]
      158 CALL                             R10 2 1
      159 NAMECALL                         R10 R10 K22 ["build"]
      161 CALL                             R10 1 -1
      162 RETURN                           R10 -1
      163 DUPTABLE                         R8 K39 [{"values"}]
      164 SETTABLEKS                       R4 R8 K38 ["values"]
      166 GETUPVAL                         R9 2
      167 CALL                             R9 0 1
      168 GETUPVAL                         R11 6
      169 MOVE                             R13 R8
      170 NAMECALL                         R11 R11 K40 ["JSONEncode"]
      172 CALL                             R11 2 -1
      173 NAMECALL                         R9 R9 K20 ["addText"]
      175 CALL                             R9 -1 1
      176 MOVE                             R11 R8
      177 NAMECALL                         R9 R9 K21 ["setStructuredContent"]
      179 CALL                             R9 2 1
      180 NAMECALL                         R9 R9 K22 ["build"]
      182 CALL                             R9 1 -1
      183 RETURN                           R9 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["AskInputTool.waitForInputAsync"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["new"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R1 K5 ["GetIdentity"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Standalone"]
       22 JUMPIFEQ                         R5 R6 ; [+9]
       24 DUPCLOSURE                       R9 K8 [PROTO_4]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R7 R3 K9 ["Connect"]
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R4 K10 ["Add"]
       31 CALL                             R5 -1 0
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NAMECALL                         R5 R2 K11 ["Once"]
       36 CALL                             R5 2 0
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 GETUPVAL                         R6 9
       46 GETTABLEKS                       R6 R6 K12 ["define"]
       48 CALL                             R6 0 1
       49 GETUPVAL                         R8 10
       50 GETTABLEKS                       R8 R8 K13 ["AskInput"]
       52 NAMECALL                         R6 R6 K14 ["setName"]
       54 CALL                             R6 2 1
       55 GETIMPORT                        R8 K17 [table.concat]
       57 NEWTABLE                         R9 0 20
       59 LOADK                            R10 K18 ["Presents a form to the user and returns the values they enter. Provide one field per value you need; the call blocks until the user submits or cancels."]
       60 LOADK                            R11 K19 [""]
       61 LOADK                            R12 K20 ["## When to use"]
       62 LOADK                            R13 K21 ["- A downstream action needs specific, typed inputs the user must supply or confirm (a name, a count, a picked instance, an uploaded image)."]
       63 LOADK                            R14 K22 ["- You want the user to review and adjust prefilled values before you act on them."]
       64 LOADK                            R15 K19 [""]
       65 LOADK                            R16 K23 ["## When NOT to use"]
       66 LOADK                            R17 K24 ["- You are resolving an ambiguous request (which approach? what scope? which target?) - use `%*` instead; it is built for bounded, one-per-ambiguity questions."]
       67 GETUPVAL                         R19 10
       68 GETTABLEKS                       R19 R19 K25 ["QuestionAnswer"]
       70 NAMECALL                         R17 R17 K26 ["format"]
       72 CALL                             R17 2 1
       73 LOADK                            R18 K27 ["- A reasonable default exists - proceed, then offer to adjust."]
       74 LOADK                            R19 K19 [""]
       75 LOADK                            R20 K28 ["## Validating input"]
       76 LOADK                            R21 K29 ["Put static, single-field limits on the FIELD, not in `validation`:"]
       77 LOADK                            R22 K30 ["- Must be filled in -> set the field's `required: true`."]
       78 LOADK                            R23 K31 ["- A number's range, or an array's item count -> set the field's `min`/`max`."]
       79 LOADK                            R24 K32 ["- One of a fixed set -> use inputType='%*' with 'options'."]
       80 GETUPVAL                         R26 11
       81 GETTABLEKS                       R26 R26 K33 ["Option"]
       83 NAMECALL                         R24 R24 K26 ["format"]
       85 CALL                             R24 2 1
       86 LOADK                            R25 K34 ["For example, a required count from 1 to 10 is just `{ \"name\": \"count\", \"inputType\": \"number\", \"required\": true, \"min\": 1, \"max\": 10 }` - do NOT write a `validation` rule for this."]
       87 SETLIST                          R9 R10 16 [1]
       89 LOADK                            R10 K35 ["Use the top-level `validation` argument ONLY for requirements that span more than one field (e.g. \"a prompt is required, but only when mode = text\"). Field limits and `validation` rules are all enforced together (combined with 'all'), so if a rule and a field's sugar constrain the same field the stricter of the two wins."]
       90 LOADK                            R11 K19 [""]
       91 LOADK                            R12 K36 ["## Result"]
       92 LOADK                            R13 K37 ["On submit, returns `values`: a map of each field's `name` to the entered value (e.g. `{ \"prompt\": \"a castle\", \"count\": 3 }`). On cancel, returns `dismissed: true` and no values."]
       93 SETLIST                          R9 R10 4 [17]
       95 LOADK                            R10 K38 ["\n"]
       96 CALL                             R8 2 -1
       97 NAMECALL                         R6 R6 K39 ["setDescription"]
       99 CALL                             R6 -1 1
      100 LOADK                            R8 K40 ["formId"]
      101 DUPTABLE                         R9 K45 [{["type"] = "string", ["description"] = "Client-managed identifier selecting a known form's presentation (heading, labels, wizard). Set by slash-command flows; leave unset when authoring a form directly."}]
      102 NAMECALL                         R6 R6 K46 ["addOptionalArgument"]
      104 CALL                             R6 3 1
      105 LOADK                            R8 K47 ["fields"]
      106 DUPTABLE                         R9 K51 [{["type"] = "array", ["description"] = "The fields to collect, in display order. A field only describes one input; cross-field requirements go in the top-level `validation` argument, never inside a field.", ["items"]}]
      107 DUPTABLE                         R10 K57 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
      108 DUPTABLE                         R11 K64 [{"name", "inputType", "initialValue", "required", "min", "max", "options"}]
      109 DUPTABLE                         R12 K66 [{["type"] = "string", ["description"] = "Identifier for this field; returned with the entered value."}]
      110 SETTABLEKS                       R12 R11 K58 ["name"]
      112 DUPTABLE                         R12 K68 [{["type"] = "string", ["description"], ["enum"]}]
      113 LOADK                            R14 K19 [""]
      114 LOADK                            R15 K69 ["What the field collects: '%*', '%*', '%*', "]
      115 GETUPVAL                         R17 11
      116 GETTABLEKS                       R17 R17 K70 ["String"]
      118 GETUPVAL                         R18 11
      119 GETTABLEKS                       R18 R18 K71 ["Number"]
      121 GETUPVAL                         R19 11
      122 GETTABLEKS                       R19 R19 K72 ["Boolean"]
      124 NAMECALL                         R15 R15 K26 ["format"]
      126 CALL                             R15 4 1
      127 LOADK                            R16 K73 ["'%*' (a list of strings), '%*' (exactly one of 'options'), "]
      128 GETUPVAL                         R18 11
      129 GETTABLEKS                       R18 R18 K74 ["Array"]
      131 GETUPVAL                         R19 11
      132 GETTABLEKS                       R19 R19 K33 ["Option"]
      134 NAMECALL                         R16 R16 K26 ["format"]
      136 CALL                             R16 3 1
      137 LOADK                            R17 K75 ["'%*', '%*' (a picked instance), or '%*' "]
      138 GETUPVAL                         R19 11
      139 GETTABLEKS                       R19 R19 K76 ["Image"]
      141 GETUPVAL                         R20 11
      142 GETTABLEKS                       R20 R20 K77 ["Instance"]
      144 GETUPVAL                         R21 11
      145 GETTABLEKS                       R21 R21 K78 ["Vector3"]
      147 NAMECALL                         R17 R17 K26 ["format"]
      149 CALL                             R17 4 1
      150 LOADK                            R18 K79 ["(an object with numeric x, y, and z components)."]
      151 CONCAT                           R13 R14 R18
      152 SETTABLEKS                       R13 R12 K43 ["description"]
      154 NEWTABLE                         R13 0 8
      156 GETUPVAL                         R14 11
      157 GETTABLEKS                       R14 R14 K74 ["Array"]
      159 GETUPVAL                         R15 11
      160 GETTABLEKS                       R15 R15 K72 ["Boolean"]
      162 GETUPVAL                         R16 11
      163 GETTABLEKS                       R16 R16 K76 ["Image"]
      165 GETUPVAL                         R17 11
      166 GETTABLEKS                       R17 R17 K77 ["Instance"]
      168 GETUPVAL                         R18 11
      169 GETTABLEKS                       R18 R18 K71 ["Number"]
      171 GETUPVAL                         R19 11
      172 GETTABLEKS                       R19 R19 K33 ["Option"]
      174 GETUPVAL                         R20 11
      175 GETTABLEKS                       R20 R20 K70 ["String"]
      177 GETUPVAL                         R21 11
      178 GETTABLEKS                       R21 R21 K78 ["Vector3"]
      180 SETLIST                          R13 R14 8 [1]
      182 SETTABLEKS                       R13 R12 K67 ["enum"]
      184 SETTABLEKS                       R12 R11 K59 ["inputType"]
      186 DUPTABLE                         R12 K81 [{["description"] = "Optional starting value, matching inputType."}]
      187 SETTABLEKS                       R12 R11 K60 ["initialValue"]
      189 DUPTABLE                         R12 K84 [{["type"] = "boolean", ["description"] = "If true, the field must have a value in the results (a non-empty string, a picked instance, at least one array item, a vector3 with numeric x/y/z components, or -- for a boolean -- either true or false). For a requirement that depends on another field's value, use the top-level `validation` argument instead."}]
      190 SETTABLEKS                       R12 R11 K56 ["required"]
      192 DUPTABLE                         R12 K86 [{["type"] = "number", ["description"]}]
      193 LOADK                            R14 K19 [""]
      194 LOADK                            R15 K87 ["For inputType='%*': inclusive lower bound on the value. "]
      195 GETUPVAL                         R17 11
      196 GETTABLEKS                       R17 R17 K71 ["Number"]
      198 NAMECALL                         R15 R15 K26 ["format"]
      200 CALL                             R15 2 1
      201 LOADK                            R16 K88 ["For inputType='%*': minimum item count. "]
      202 GETUPVAL                         R18 11
      203 GETTABLEKS                       R18 R18 K74 ["Array"]
      205 NAMECALL                         R16 R16 K26 ["format"]
      207 CALL                             R16 2 1
      208 LOADK                            R17 K89 ["Ignored for other types."]
      209 CONCAT                           R13 R14 R17
      210 SETTABLEKS                       R13 R12 K43 ["description"]
      212 SETTABLEKS                       R12 R11 K61 ["min"]
      214 DUPTABLE                         R12 K86 [{["type"] = "number", ["description"]}]
      215 LOADK                            R14 K19 [""]
      216 LOADK                            R15 K90 ["For inputType='%*': inclusive upper bound on the value. "]
      217 GETUPVAL                         R17 11
      218 GETTABLEKS                       R17 R17 K71 ["Number"]
      220 NAMECALL                         R15 R15 K26 ["format"]
      222 CALL                             R15 2 1
      223 LOADK                            R16 K91 ["For inputType='%*': maximum item count. "]
      224 GETUPVAL                         R18 11
      225 GETTABLEKS                       R18 R18 K74 ["Array"]
      227 NAMECALL                         R16 R16 K26 ["format"]
      229 CALL                             R16 2 1
      230 LOADK                            R17 K89 ["Ignored for other types."]
      231 CONCAT                           R13 R14 R17
      232 SETTABLEKS                       R13 R12 K43 ["description"]
      234 SETTABLEKS                       R12 R11 K62 ["max"]
      236 DUPTABLE                         R12 K92 [{["type"] = "array", ["description"], ["items"]}]
      237 LOADK                            R13 K93 ["Required when inputType='%*': the ids to choose exactly one of."]
      238 GETUPVAL                         R15 11
      239 GETTABLEKS                       R15 R15 K33 ["Option"]
      241 NAMECALL                         R13 R13 K26 ["format"]
      243 CALL                             R13 2 1
      244 SETTABLEKS                       R13 R12 K43 ["description"]
      246 DUPTABLE                         R13 K94 [{["type"] = "string"}]
      247 SETTABLEKS                       R13 R12 K50 ["items"]
      249 SETTABLEKS                       R12 R11 K63 ["options"]
      251 SETTABLEKS                       R11 R10 K55 ["properties"]
      253 NEWTABLE                         R11 0 2
      255 LOADK                            R12 K58 ["name"]
      256 LOADK                            R13 K59 ["inputType"]
      257 SETLIST                          R11 R12 2 [1]
      259 SETTABLEKS                       R11 R10 K56 ["required"]
      261 SETTABLEKS                       R10 R9 K50 ["items"]
      263 NAMECALL                         R6 R6 K95 ["addArgument"]
      265 CALL                             R6 3 1
      266 LOADK                            R8 K96 ["validation"]
      267 DUPTABLE                         R9 K98 [{["type"] = "object", ["description"] = "Top-level argument, a sibling of `fields` (NOT a property of any field). For cross-field requirements ONLY - static single-field limits belong on the field via `required`/`min`/`max` (see the tool description's 'Validating input' section). Optional rule the entered values must satisfy before the form can be submitted; the tool also re-checks it on submit and errors if unmet. A rule is an object with a `kind`. Leaf rules inspect one field: 'nonEmpty' (`field` is filled in - a non-empty string/array, or a checked boolean), 'exists' (`field` has any value, including a boolean false), 'equals' (`field` == `value`), 'range' (a number `field` within `min`/`max`, or an array `field` whose item count is within `min`/`max`; both bounds inclusive and optional). Combinators nest other rules: 'all'/'any' take a `rules` array, 'not' takes a single `rule`, 'branch' reads `field` and applies the matching rule in `cases` (with optional `default`). Constants: 'always' / 'never'. Example - require a prompt only in text mode: { \"kind\": \"branch\", \"field\": \"promptMode\", \"cases\": { \"text\": { \"kind\": \"nonEmpty\", \"field\": \"textPrompt\" } } }.", ["properties"], ["required"]}]
      268 DUPTABLE                         R10 K106 [{"kind", "field", "value", "min", "max", "rules", "rule", "cases", "default"}]
      269 DUPTABLE                         R11 K108 [{["type"] = "string", ["enum"], ["description"] = "Which rule to apply."}]
      270 NEWTABLE                         R12 0 10
      272 GETUPVAL                         R13 12
      273 GETTABLEKS                       R13 R13 K109 ["All"]
      275 GETUPVAL                         R14 12
      276 GETTABLEKS                       R14 R14 K110 ["Always"]
      278 GETUPVAL                         R15 12
      279 GETTABLEKS                       R15 R15 K111 ["Any"]
      281 GETUPVAL                         R16 12
      282 GETTABLEKS                       R16 R16 K112 ["Branch"]
      284 GETUPVAL                         R17 12
      285 GETTABLEKS                       R17 R17 K113 ["Equals"]
      287 GETUPVAL                         R18 12
      288 GETTABLEKS                       R18 R18 K114 ["Exists"]
      290 GETUPVAL                         R19 12
      291 GETTABLEKS                       R19 R19 K115 ["Never"]
      293 GETUPVAL                         R20 12
      294 GETTABLEKS                       R20 R20 K116 ["Not"]
      296 GETUPVAL                         R21 12
      297 GETTABLEKS                       R21 R21 K117 ["NonEmpty"]
      299 GETUPVAL                         R22 12
      300 GETTABLEKS                       R22 R22 K118 ["Range"]
      302 SETLIST                          R12 R13 10 [1]
      304 SETTABLEKS                       R12 R11 K67 ["enum"]
      306 SETTABLEKS                       R11 R10 K99 ["kind"]
      308 DUPTABLE                         R11 K120 [{["type"] = "string", ["description"] = "For nonEmpty/exists/equals/range/branch: the field name to inspect."}]
      309 SETTABLEKS                       R11 R10 K100 ["field"]
      311 DUPTABLE                         R11 K122 [{["description"] = "For equals: the value `field` must equal."}]
      312 SETTABLEKS                       R11 R10 K101 ["value"]
      314 DUPTABLE                         R11 K124 [{["type"] = "number", ["description"] = "For range: inclusive lower bound on the number, or on an array field's item count (optional)."}]
      315 SETTABLEKS                       R11 R10 K61 ["min"]
      317 DUPTABLE                         R11 K126 [{["type"] = "number", ["description"] = "For range: inclusive upper bound on the number, or on an array field's item count (optional)."}]
      318 SETTABLEKS                       R11 R10 K62 ["max"]
      320 DUPTABLE                         R11 K128 [{["type"] = "array", ["description"] = "For all/any: the nested rules to combine."}]
      321 SETTABLEKS                       R11 R10 K102 ["rules"]
      323 DUPTABLE                         R11 K130 [{["type"] = "object", ["description"] = "For not: the nested rule that must NOT pass."}]
      324 SETTABLEKS                       R11 R10 K103 ["rule"]
      326 DUPTABLE                         R11 K132 [{["type"] = "object", ["description"] = "For branch: map from the branch field's value to a nested rule."}]
      327 SETTABLEKS                       R11 R10 K104 ["cases"]
      329 DUPTABLE                         R11 K134 [{["type"] = "object", ["description"] = "For branch: the nested rule applied when no case matches."}]
      330 SETTABLEKS                       R11 R10 K105 ["default"]
      332 SETTABLEKS                       R10 R9 K55 ["properties"]
      334 NEWTABLE                         R10 0 1
      336 LOADK                            R11 K99 ["kind"]
      337 SETLIST                          R10 R11 1 [1]
      339 SETTABLEKS                       R10 R9 K56 ["required"]
      341 NAMECALL                         R6 R6 K46 ["addOptionalArgument"]
      343 CALL                             R6 3 1
      344 LOADK                            R8 K135 ["Ask For Input"]
      345 NAMECALL                         R6 R6 K136 ["setTitle"]
      347 CALL                             R6 2 1
      348 DUPTABLE                         R8 K143 [{["title"] = "Ask For Input", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      349 NAMECALL                         R6 R6 K144 ["setAnnotations"]
      351 CALL                             R6 2 1
      352 MOVE                             R8 R5
      353 NAMECALL                         R6 R6 K145 ["setHandler"]
      355 CALL                             R6 2 1
      356 NAMECALL                         R6 R6 K146 ["build"]
      358 CALL                             R6 1 1
      359 DUPTABLE                         R7 K149 [{"definition", "toolCallOptions"}]
      360 SETTABLEKS                       R6 R7 K147 ["definition"]
      362 DUPTABLE                         R8 K152 [{["timeout"] = 200000000}]
      363 SETTABLEKS                       R8 R7 K148 ["toolCallOptions"]
      365 RETURN                           R7 1

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
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["AskInput"]
       36 GETTABLEKS                       R7 R7 K16 ["AskInputChannel"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R0 K14 ["Util"]
       43 GETTABLEKS                       R8 R8 K15 ["AskInput"]
       45 GETTABLEKS                       R8 R8 K17 ["AskInputTypes"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETTABLEKS                       R9 R0 K18 ["Flags"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R0 K14 ["Util"]
       57 GETTABLEKS                       R10 R10 K19 ["InstanceChannel"]
       59 GETTABLEKS                       R10 R10 K19 ["InstanceChannel"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R0 K14 ["Util"]
       66 GETTABLEKS                       R11 R11 K20 ["SlashCommandConfiguration"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R0 K21 ["Tools"]
       73 GETTABLEKS                       R12 R12 K22 ["ToolTypes"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R0 K14 ["Util"]
       80 GETTABLEKS                       R13 R13 K15 ["AskInput"]
       82 GETTABLEKS                       R13 R13 K23 ["Validation"]
       84 CALL                             R12 1 1
       85 GETTABLEKS                       R13 R4 K24 ["Remote"]
       87 GETTABLEKS                       R14 R5 K14 ["Util"]
       89 GETTABLEKS                       R14 R14 K25 ["ToolBuilder"]
       91 GETTABLEKS                       R15 R5 K14 ["Util"]
       93 GETTABLEKS                       R15 R15 K26 ["ToolResult"]
       95 GETTABLEKS                       R16 R11 K27 ["ToolNames"]
       97 GETTABLEKS                       R17 R7 K28 ["INPUT_TYPE"]
       99 GETTABLEKS                       R18 R7 K29 ["RULE_KIND"]
      101 DUPCLOSURE                       R19 K30 [PROTO_1]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 DUPCLOSURE                       R20 K31 [PROTO_2]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R19
      107 DUPCLOSURE                       R21 K32 [PROTO_3]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R20
      111 DUPCLOSURE                       R22 K33 [PROTO_7]
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R18
      125 RETURN                           R22 1
