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
       24 GETIMPORT                        R5 K7 [pcall]
       26 GETUPVAL                         R6 2
       27 MOVE                             R7 R4
       28 MOVE                             R8 R2
       29 CALL                             R5 3 2
       30 NAMECALL                         R7 R4 K4 ["Destroy"]
       32 CALL                             R7 1 0
       33 JUMPIF                           R5 ; [+5]
       34 GETIMPORT                        R7 K9 [error]
       36 MOVE                             R8 R6
       37 LOADN                            R9 0
       38 CALL                             R7 2 0
       39 RETURN                           R6 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_7:
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
       54 LOADNIL                          R4
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantUseNewDMNetworking"]
       58 JUMPIFNOT                        R5 ; [+14]
       59 GETUPVAL                         R5 1
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R7 R7 K13 ["FOCUSED"]
       63 DUPTABLE                         R8 K15 [{"toolUseId", "fields"}]
       64 SETTABLEKS                       R2 R8 K14 ["toolUseId"]
       66 SETTABLEKS                       R3 R8 K8 ["fields"]
       68 NAMECALL                         R5 R5 K16 ["InvokeAsync"]
       70 CALL                             R5 3 1
       71 MOVE                             R4 R5
       72 JUMP                             ; [+9]
       73 GETUPVAL                         R5 3
       74 LOADNIL                          R6
       75 DUPTABLE                         R7 K15 [{"toolUseId", "fields"}]
       76 SETTABLEKS                       R2 R7 K14 ["toolUseId"]
       78 SETTABLEKS                       R3 R7 K8 ["fields"]
       80 CALL                             R5 2 1
       81 MOVE                             R4 R5
       82 JUMPIF                           R4 ; [+15]
       83 DUPTABLE                         R5 K19 [{["dismissed"] = True}]
       84 GETUPVAL                         R6 4
       85 CALL                             R6 0 1
       86 LOADK                            R8 K20 ["The user cancelled the input request."]
       87 NAMECALL                         R6 R6 K21 ["addText"]
       89 CALL                             R6 2 1
       90 MOVE                             R8 R5
       91 NAMECALL                         R6 R6 K22 ["setStructuredContent"]
       93 CALL                             R6 2 1
       94 NAMECALL                         R6 R6 K23 ["build"]
       96 CALL                             R6 1 -1
       97 RETURN                           R6 -1
       98 GETUPVAL                         R5 5
       99 GETTABLEKS                       R5 R5 K24 ["validateFieldValues"]
      101 MOVE                             R6 R3
      102 MOVE                             R7 R4
      103 CALL                             R5 2 1
      104 JUMPIFEQKNIL                     R5 ; [+19]
      106 GETUPVAL                         R6 4
      107 CALL                             R6 0 1
      108 LOADK                            R8 K25 ["Submitted values had the wrong type: %*."]
      109 MOVE                             R10 R5
      110 NAMECALL                         R8 R8 K26 ["format"]
      112 CALL                             R8 2 1
      113 NAMECALL                         R6 R6 K21 ["addText"]
      115 CALL                             R6 2 1
      116 LOADB                            R8 1
      117 NAMECALL                         R6 R6 K27 ["setError"]
      119 CALL                             R6 2 1
      120 NAMECALL                         R6 R6 K23 ["build"]
      122 CALL                             R6 1 -1
      123 RETURN                           R6 -1
      124 GETUPVAL                         R7 0
      125 GETTABLEKS                       R7 R7 K28 ["FFlagAssistantAskInputRequiredMarkers"]
      127 JUMPIFNOT                        R7 ; [+10]
      128 GETUPVAL                         R6 6
      129 GETTABLEKS                       R6 R6 K29 ["getSubmittedFields"]
      131 GETTABLEKS                       R7 R0 K30 ["formId"]
      133 MOVE                             R8 R3
      134 MOVE                             R9 R4
      135 DUPTABLE                         R10 K33 [{["isSubmitted"] = False}]
      136 CALL                             R6 4 1
      137 JUMP                             ; [+1]
      138 MOVE                             R6 R3
      139 GETUPVAL                         R7 5
      140 GETTABLEKS                       R7 R7 K34 ["desugarFields"]
      142 MOVE                             R8 R6
      143 GETTABLEKS                       R9 R0 K35 ["validation"]
      145 CALL                             R7 2 1
      146 JUMPIFEQKNIL                     R7 ; [+32]
      148 GETUPVAL                         R8 5
      149 GETTABLEKS                       R8 R8 K36 ["evaluateValidation"]
      151 MOVE                             R9 R7
      152 MOVE                             R10 R4
      153 CALL                             R8 2 1
      154 JUMPIF                           R8 ; [+24]
      155 GETUPVAL                         R9 5
      156 GETTABLEKS                       R9 R9 K37 ["summarizeFailures"]
      158 MOVE                             R10 R7
      159 MOVE                             R11 R4
      160 CALL                             R9 2 1
      161 GETUPVAL                         R10 4
      162 CALL                             R10 0 1
      163 LOADK                            R12 K38 ["Submitted values did not satisfy the requirements: %*."]
      164 MOVE                             R14 R9
      165 NAMECALL                         R12 R12 K26 ["format"]
      167 CALL                             R12 2 1
      168 NAMECALL                         R10 R10 K21 ["addText"]
      170 CALL                             R10 2 1
      171 LOADB                            R12 1
      172 NAMECALL                         R10 R10 K27 ["setError"]
      174 CALL                             R10 2 1
      175 NAMECALL                         R10 R10 K23 ["build"]
      177 CALL                             R10 1 -1
      178 RETURN                           R10 -1
      179 DUPTABLE                         R8 K40 [{"values"}]
      180 SETTABLEKS                       R4 R8 K39 ["values"]
      182 GETUPVAL                         R9 4
      183 CALL                             R9 0 1
      184 GETUPVAL                         R11 7
      185 MOVE                             R13 R8
      186 NAMECALL                         R11 R11 K41 ["JSONEncode"]
      188 CALL                             R11 2 -1
      189 NAMECALL                         R9 R9 K21 ["addText"]
      191 CALL                             R9 -1 1
      192 MOVE                             R11 R8
      193 NAMECALL                         R9 R9 K22 ["setStructuredContent"]
      195 CALL                             R9 2 1
      196 NAMECALL                         R9 R9 K23 ["build"]
      198 CALL                             R9 1 -1
      199 RETURN                           R9 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["AskInputTool.waitForInputAsync"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_4]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["AskInputTool_waitForInputAsync"]
       48 DUPCLOSURE                       R9 K15 [PROTO_6]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          REF R3
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 GETUPVAL                         R6 9
       64 GETTABLEKS                       R6 R6 K17 ["define"]
       66 CALL                             R6 0 1
       67 GETUPVAL                         R8 10
       68 GETTABLEKS                       R8 R8 K18 ["AskInput"]
       70 NAMECALL                         R6 R6 K19 ["setName"]
       72 CALL                             R6 2 1
       73 GETIMPORT                        R8 K22 [table.concat]
       75 NEWTABLE                         R9 0 20
       77 LOADK                            R10 K23 ["Presents a form to the user and returns the values they enter. Provide one field per value you need; the call blocks until the user submits or cancels."]
       78 LOADK                            R11 K24 [""]
       79 LOADK                            R12 K25 ["## When to use"]
       80 LOADK                            R13 K26 ["- A downstream action needs specific, typed inputs the user must supply or confirm (a name, a count, a picked instance, an uploaded image)."]
       81 LOADK                            R14 K27 ["- You want the user to review and adjust prefilled values before you act on them."]
       82 LOADK                            R15 K24 [""]
       83 LOADK                            R16 K28 ["## When NOT to use"]
       84 LOADK                            R17 K29 ["- You are resolving an ambiguous request (which approach? what scope? which target?) - use `%*` instead; it is built for bounded, one-per-ambiguity questions."]
       85 GETUPVAL                         R19 10
       86 GETTABLEKS                       R19 R19 K30 ["QuestionAnswer"]
       88 NAMECALL                         R17 R17 K31 ["format"]
       90 CALL                             R17 2 1
       91 LOADK                            R18 K32 ["- A reasonable default exists - proceed, then offer to adjust."]
       92 LOADK                            R19 K24 [""]
       93 LOADK                            R20 K33 ["## Validating input"]
       94 LOADK                            R21 K34 ["Put static, single-field limits on the FIELD, not in `validation`:"]
       95 LOADK                            R22 K35 ["- Must be filled in -> set the field's `required: true`."]
       96 LOADK                            R23 K36 ["- A number's range, or an array's item count -> set the field's `min`/`max`."]
       97 LOADK                            R24 K37 ["- One of a fixed set -> use inputType='%*' with 'options'."]
       98 GETUPVAL                         R26 11
       99 GETTABLEKS                       R26 R26 K38 ["Option"]
      101 NAMECALL                         R24 R24 K31 ["format"]
      103 CALL                             R24 2 1
      104 LOADK                            R25 K39 ["For example, a required count from 1 to 10 is just `{ \"name\": \"count\", \"inputType\": \"number\", \"required\": true, \"min\": 1, \"max\": 10 }` - do NOT write a `validation` rule for this."]
      105 SETLIST                          R9 R10 16 [1]
      107 LOADK                            R10 K40 ["Use the top-level `validation` argument ONLY for requirements that span more than one field (e.g. \"a prompt is required, but only when mode = text\"). Field limits and `validation` rules are all enforced together (combined with 'all'), so if a rule and a field's sugar constrain the same field the stricter of the two wins."]
      108 LOADK                            R11 K24 [""]
      109 LOADK                            R12 K41 ["## Result"]
      110 LOADK                            R13 K42 ["On submit, returns `values`: a map of each field's `name` to the entered value (e.g. `{ \"prompt\": \"a castle\", \"count\": 3 }`). On cancel, returns `dismissed: true` and no values."]
      111 SETLIST                          R9 R10 4 [17]
      113 LOADK                            R10 K43 ["\n"]
      114 CALL                             R8 2 -1
      115 NAMECALL                         R6 R6 K44 ["setDescription"]
      117 CALL                             R6 -1 1
      118 LOADK                            R8 K45 ["formId"]
      119 DUPTABLE                         R9 K50 [{["type"] = "string", ["description"] = "Client-managed identifier selecting a known form's presentation (heading, labels, wizard). Set by slash-command flows; leave unset when authoring a form directly."}]
      120 NAMECALL                         R6 R6 K51 ["addOptionalArgument"]
      122 CALL                             R6 3 1
      123 LOADK                            R8 K52 ["fields"]
      124 DUPTABLE                         R9 K56 [{["type"] = "array", ["description"] = "The fields to collect, in display order. A field only describes one input; cross-field requirements go in the top-level `validation` argument, never inside a field.", ["items"]}]
      125 DUPTABLE                         R10 K62 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
      126 DUPTABLE                         R11 K69 [{"name", "inputType", "initialValue", "required", "min", "max", "options"}]
      127 DUPTABLE                         R12 K71 [{["type"] = "string", ["description"] = "Identifier for this field; returned with the entered value."}]
      128 SETTABLEKS                       R12 R11 K63 ["name"]
      130 DUPTABLE                         R12 K73 [{["type"] = "string", ["description"], ["enum"]}]
      131 LOADK                            R14 K24 [""]
      132 LOADK                            R19 K74 ["What the field collects: '%*', '%*', '%*', "]
      133 GETUPVAL                         R21 11
      134 GETTABLEKS                       R21 R21 K75 ["String"]
      136 GETUPVAL                         R22 11
      137 GETTABLEKS                       R22 R22 K76 ["Number"]
      139 GETUPVAL                         R23 11
      140 GETTABLEKS                       R23 R23 K77 ["Boolean"]
      142 NAMECALL                         R19 R19 K31 ["format"]
      144 CALL                             R19 4 1
      145 MOVE                             R15 R19
      146 LOADK                            R19 K78 ["'%*' (a list of strings), '%*' (exactly one of 'options'), "]
      147 GETUPVAL                         R21 11
      148 GETTABLEKS                       R21 R21 K79 ["Array"]
      150 GETUPVAL                         R22 11
      151 GETTABLEKS                       R22 R22 K38 ["Option"]
      153 NAMECALL                         R19 R19 K31 ["format"]
      155 CALL                             R19 3 1
      156 MOVE                             R16 R19
      157 LOADK                            R19 K80 ["'%*', '%*' (a picked instance), or '%*' "]
      158 GETUPVAL                         R21 11
      159 GETTABLEKS                       R21 R21 K81 ["Image"]
      161 GETUPVAL                         R22 11
      162 GETTABLEKS                       R22 R22 K82 ["Instance"]
      164 GETUPVAL                         R23 11
      165 GETTABLEKS                       R23 R23 K83 ["Vector3"]
      167 NAMECALL                         R19 R19 K31 ["format"]
      169 CALL                             R19 4 1
      170 MOVE                             R17 R19
      171 LOADK                            R18 K84 ["(an object with numeric x, y, and z components)."]
      172 CONCAT                           R13 R14 R18
      173 SETTABLEKS                       R13 R12 K48 ["description"]
      175 NEWTABLE                         R13 0 8
      177 GETUPVAL                         R14 11
      178 GETTABLEKS                       R14 R14 K79 ["Array"]
      180 GETUPVAL                         R15 11
      181 GETTABLEKS                       R15 R15 K77 ["Boolean"]
      183 GETUPVAL                         R16 11
      184 GETTABLEKS                       R16 R16 K81 ["Image"]
      186 GETUPVAL                         R17 11
      187 GETTABLEKS                       R17 R17 K82 ["Instance"]
      189 GETUPVAL                         R18 11
      190 GETTABLEKS                       R18 R18 K76 ["Number"]
      192 GETUPVAL                         R19 11
      193 GETTABLEKS                       R19 R19 K38 ["Option"]
      195 GETUPVAL                         R20 11
      196 GETTABLEKS                       R20 R20 K75 ["String"]
      198 GETUPVAL                         R21 11
      199 GETTABLEKS                       R21 R21 K83 ["Vector3"]
      201 SETLIST                          R13 R14 8 [1]
      203 SETTABLEKS                       R13 R12 K72 ["enum"]
      205 SETTABLEKS                       R12 R11 K64 ["inputType"]
      207 DUPTABLE                         R12 K86 [{["description"] = "Optional starting value, matching inputType."}]
      208 SETTABLEKS                       R12 R11 K65 ["initialValue"]
      210 DUPTABLE                         R12 K89 [{["type"] = "boolean", ["description"] = "If true, the field must have a value in the results (a non-empty string, a picked instance, at least one array item, a vector3 with numeric x/y/z components, or -- for a boolean -- either true or false). For a requirement that depends on another field's value, use the top-level `validation` argument instead."}]
      211 SETTABLEKS                       R12 R11 K61 ["required"]
      213 DUPTABLE                         R12 K91 [{["type"] = "number", ["description"]}]
      214 LOADK                            R14 K24 [""]
      215 LOADK                            R18 K92 ["For inputType='%*': inclusive lower bound on the value. "]
      216 GETUPVAL                         R20 11
      217 GETTABLEKS                       R20 R20 K76 ["Number"]
      219 NAMECALL                         R18 R18 K31 ["format"]
      221 CALL                             R18 2 1
      222 MOVE                             R15 R18
      223 LOADK                            R18 K93 ["For inputType='%*': minimum item count. "]
      224 GETUPVAL                         R20 11
      225 GETTABLEKS                       R20 R20 K79 ["Array"]
      227 NAMECALL                         R18 R18 K31 ["format"]
      229 CALL                             R18 2 1
      230 MOVE                             R16 R18
      231 LOADK                            R17 K94 ["Ignored for other types."]
      232 CONCAT                           R13 R14 R17
      233 SETTABLEKS                       R13 R12 K48 ["description"]
      235 SETTABLEKS                       R12 R11 K66 ["min"]
      237 DUPTABLE                         R12 K91 [{["type"] = "number", ["description"]}]
      238 LOADK                            R14 K24 [""]
      239 LOADK                            R18 K95 ["For inputType='%*': inclusive upper bound on the value. "]
      240 GETUPVAL                         R20 11
      241 GETTABLEKS                       R20 R20 K76 ["Number"]
      243 NAMECALL                         R18 R18 K31 ["format"]
      245 CALL                             R18 2 1
      246 MOVE                             R15 R18
      247 LOADK                            R18 K96 ["For inputType='%*': maximum item count. "]
      248 GETUPVAL                         R20 11
      249 GETTABLEKS                       R20 R20 K79 ["Array"]
      251 NAMECALL                         R18 R18 K31 ["format"]
      253 CALL                             R18 2 1
      254 MOVE                             R16 R18
      255 LOADK                            R17 K94 ["Ignored for other types."]
      256 CONCAT                           R13 R14 R17
      257 SETTABLEKS                       R13 R12 K48 ["description"]
      259 SETTABLEKS                       R12 R11 K67 ["max"]
      261 DUPTABLE                         R12 K97 [{["type"] = "array", ["description"], ["items"]}]
      262 LOADK                            R13 K98 ["Required when inputType='%*': the ids to choose exactly one of."]
      263 GETUPVAL                         R15 11
      264 GETTABLEKS                       R15 R15 K38 ["Option"]
      266 NAMECALL                         R13 R13 K31 ["format"]
      268 CALL                             R13 2 1
      269 SETTABLEKS                       R13 R12 K48 ["description"]
      271 DUPTABLE                         R13 K99 [{["type"] = "string"}]
      272 SETTABLEKS                       R13 R12 K55 ["items"]
      274 SETTABLEKS                       R12 R11 K68 ["options"]
      276 SETTABLEKS                       R11 R10 K60 ["properties"]
      278 NEWTABLE                         R11 0 2
      280 LOADK                            R12 K63 ["name"]
      281 LOADK                            R13 K64 ["inputType"]
      282 SETLIST                          R11 R12 2 [1]
      284 SETTABLEKS                       R11 R10 K61 ["required"]
      286 SETTABLEKS                       R10 R9 K55 ["items"]
      288 NAMECALL                         R6 R6 K100 ["addArgument"]
      290 CALL                             R6 3 1
      291 LOADK                            R8 K101 ["validation"]
      292 DUPTABLE                         R9 K103 [{["type"] = "object", ["description"] = "Top-level argument, a sibling of `fields` (NOT a property of any field). For cross-field requirements ONLY - static single-field limits belong on the field via `required`/`min`/`max` (see the tool description's 'Validating input' section). Optional rule the entered values must satisfy before the form can be submitted; the tool also re-checks it on submit and errors if unmet. A rule is an object with a `kind`. Leaf rules inspect one field: 'nonEmpty' (`field` is filled in - a non-empty string/array, or a checked boolean), 'exists' (`field` has any value, including a boolean false), 'equals' (`field` == `value`), 'range' (a number `field` within `min`/`max`, or an array `field` whose item count is within `min`/`max`; both bounds inclusive and optional). Combinators nest other rules: 'all'/'any' take a `rules` array, 'not' takes a single `rule`, 'branch' reads `field` and applies the matching rule in `cases` (with optional `default`). Constants: 'always' / 'never'. Example - require a prompt only in text mode: { \"kind\": \"branch\", \"field\": \"promptMode\", \"cases\": { \"text\": { \"kind\": \"nonEmpty\", \"field\": \"textPrompt\" } } }.", ["properties"], ["required"]}]
      293 DUPTABLE                         R10 K111 [{"kind", "field", "value", "min", "max", "rules", "rule", "cases", "default"}]
      294 DUPTABLE                         R11 K113 [{["type"] = "string", ["enum"], ["description"] = "Which rule to apply."}]
      295 NEWTABLE                         R12 0 10
      297 GETUPVAL                         R13 12
      298 GETTABLEKS                       R13 R13 K114 ["All"]
      300 GETUPVAL                         R14 12
      301 GETTABLEKS                       R14 R14 K115 ["Always"]
      303 GETUPVAL                         R15 12
      304 GETTABLEKS                       R15 R15 K116 ["Any"]
      306 GETUPVAL                         R16 12
      307 GETTABLEKS                       R16 R16 K117 ["Branch"]
      309 GETUPVAL                         R17 12
      310 GETTABLEKS                       R17 R17 K118 ["Equals"]
      312 GETUPVAL                         R18 12
      313 GETTABLEKS                       R18 R18 K119 ["Exists"]
      315 GETUPVAL                         R19 12
      316 GETTABLEKS                       R19 R19 K120 ["Never"]
      318 GETUPVAL                         R20 12
      319 GETTABLEKS                       R20 R20 K121 ["Not"]
      321 GETUPVAL                         R21 12
      322 GETTABLEKS                       R21 R21 K122 ["NonEmpty"]
      324 GETUPVAL                         R22 12
      325 GETTABLEKS                       R22 R22 K123 ["Range"]
      327 SETLIST                          R12 R13 10 [1]
      329 SETTABLEKS                       R12 R11 K72 ["enum"]
      331 SETTABLEKS                       R11 R10 K104 ["kind"]
      333 DUPTABLE                         R11 K125 [{["type"] = "string", ["description"] = "For nonEmpty/exists/equals/range/branch: the field name to inspect."}]
      334 SETTABLEKS                       R11 R10 K105 ["field"]
      336 DUPTABLE                         R11 K127 [{["description"] = "For equals: the value `field` must equal."}]
      337 SETTABLEKS                       R11 R10 K106 ["value"]
      339 DUPTABLE                         R11 K129 [{["type"] = "number", ["description"] = "For range: inclusive lower bound on the number, or on an array field's item count (optional)."}]
      340 SETTABLEKS                       R11 R10 K66 ["min"]
      342 DUPTABLE                         R11 K131 [{["type"] = "number", ["description"] = "For range: inclusive upper bound on the number, or on an array field's item count (optional)."}]
      343 SETTABLEKS                       R11 R10 K67 ["max"]
      345 DUPTABLE                         R11 K133 [{["type"] = "array", ["description"] = "For all/any: the nested rules to combine."}]
      346 SETTABLEKS                       R11 R10 K107 ["rules"]
      348 DUPTABLE                         R11 K135 [{["type"] = "object", ["description"] = "For not: the nested rule that must NOT pass."}]
      349 SETTABLEKS                       R11 R10 K108 ["rule"]
      351 DUPTABLE                         R11 K137 [{["type"] = "object", ["description"] = "For branch: map from the branch field's value to a nested rule."}]
      352 SETTABLEKS                       R11 R10 K109 ["cases"]
      354 DUPTABLE                         R11 K139 [{["type"] = "object", ["description"] = "For branch: the nested rule applied when no case matches."}]
      355 SETTABLEKS                       R11 R10 K110 ["default"]
      357 SETTABLEKS                       R10 R9 K60 ["properties"]
      359 NEWTABLE                         R10 0 1
      361 LOADK                            R11 K104 ["kind"]
      362 SETLIST                          R10 R11 1 [1]
      364 SETTABLEKS                       R10 R9 K61 ["required"]
      366 NAMECALL                         R6 R6 K51 ["addOptionalArgument"]
      368 CALL                             R6 3 1
      369 LOADK                            R8 K140 ["Ask For Input"]
      370 NAMECALL                         R6 R6 K141 ["setTitle"]
      372 CALL                             R6 2 1
      373 DUPTABLE                         R8 K148 [{["title"] = "Ask For Input", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      374 NAMECALL                         R6 R6 K149 ["setAnnotations"]
      376 CALL                             R6 2 1
      377 MOVE                             R8 R5
      378 NAMECALL                         R6 R6 K150 ["setHandler"]
      380 CALL                             R6 2 1
      381 NAMECALL                         R6 R6 K151 ["build"]
      383 CALL                             R6 1 1
      384 DUPTABLE                         R7 K154 [{"definition", "toolCallOptions"}]
      385 SETTABLEKS                       R6 R7 K152 ["definition"]
      387 DUPTABLE                         R8 K157 [{["timeout"] = 200000000}]
      388 SETTABLEKS                       R8 R7 K153 ["toolCallOptions"]
      390 CLOSEUPVALS                      R3
      391 RETURN                           R7 1

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
      111 DUPCLOSURE                       R22 K33 [PROTO_8]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R18
      125 RETURN                           R22 1
