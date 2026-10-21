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
      124 GETUPVAL                         R6 5
      125 GETTABLEKS                       R6 R6 K28 ["desugarFields"]
      127 MOVE                             R7 R3
      128 GETTABLEKS                       R8 R0 K29 ["validation"]
      130 CALL                             R6 2 1
      131 JUMPIFEQKNIL                     R6 ; [+32]
      133 GETUPVAL                         R7 5
      134 GETTABLEKS                       R7 R7 K30 ["evaluateValidation"]
      136 MOVE                             R8 R6
      137 MOVE                             R9 R4
      138 CALL                             R7 2 1
      139 JUMPIF                           R7 ; [+24]
      140 GETUPVAL                         R8 5
      141 GETTABLEKS                       R8 R8 K31 ["summarizeFailures"]
      143 MOVE                             R9 R6
      144 MOVE                             R10 R4
      145 CALL                             R8 2 1
      146 GETUPVAL                         R9 4
      147 CALL                             R9 0 1
      148 LOADK                            R11 K32 ["Submitted values did not satisfy the requirements: %*."]
      149 MOVE                             R13 R8
      150 NAMECALL                         R11 R11 K26 ["format"]
      152 CALL                             R11 2 1
      153 NAMECALL                         R9 R9 K21 ["addText"]
      155 CALL                             R9 2 1
      156 LOADB                            R11 1
      157 NAMECALL                         R9 R9 K27 ["setError"]
      159 CALL                             R9 2 1
      160 NAMECALL                         R9 R9 K23 ["build"]
      162 CALL                             R9 1 -1
      163 RETURN                           R9 -1
      164 DUPTABLE                         R7 K34 [{"values"}]
      165 SETTABLEKS                       R4 R7 K33 ["values"]
      167 GETUPVAL                         R8 4
      168 CALL                             R8 0 1
      169 GETUPVAL                         R10 6
      170 MOVE                             R12 R7
      171 NAMECALL                         R10 R10 K35 ["JSONEncode"]
      173 CALL                             R10 2 -1
      174 NAMECALL                         R8 R8 K21 ["addText"]
      176 CALL                             R8 -1 1
      177 MOVE                             R10 R7
      178 NAMECALL                         R8 R8 K22 ["setStructuredContent"]
      180 CALL                             R8 2 1
      181 NAMECALL                         R8 R8 K23 ["build"]
      183 CALL                             R8 1 -1
      184 RETURN                           R8 -1

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
       62 GETUPVAL                         R6 8
       63 GETTABLEKS                       R6 R6 K17 ["define"]
       65 CALL                             R6 0 1
       66 GETUPVAL                         R8 9
       67 GETTABLEKS                       R8 R8 K18 ["AskInput"]
       69 NAMECALL                         R6 R6 K19 ["setName"]
       71 CALL                             R6 2 1
       72 GETIMPORT                        R8 K22 [table.concat]
       74 NEWTABLE                         R9 0 20
       76 LOADK                            R10 K23 ["Presents a form to the user and returns the values they enter. Provide one field per value you need; the call blocks until the user submits or cancels."]
       77 LOADK                            R11 K24 [""]
       78 LOADK                            R12 K25 ["## When to use"]
       79 LOADK                            R13 K26 ["- A downstream action needs specific, typed inputs the user must supply or confirm (a name, a count, a picked instance, an uploaded image)."]
       80 LOADK                            R14 K27 ["- You want the user to review and adjust prefilled values before you act on them."]
       81 LOADK                            R15 K24 [""]
       82 LOADK                            R16 K28 ["## When NOT to use"]
       83 LOADK                            R17 K29 ["- You are resolving an ambiguous request (which approach? what scope? which target?) - use `%*` instead; it is built for bounded, one-per-ambiguity questions."]
       84 GETUPVAL                         R19 9
       85 GETTABLEKS                       R19 R19 K30 ["QuestionAnswer"]
       87 NAMECALL                         R17 R17 K31 ["format"]
       89 CALL                             R17 2 1
       90 LOADK                            R18 K32 ["- A reasonable default exists - proceed, then offer to adjust."]
       91 LOADK                            R19 K24 [""]
       92 LOADK                            R20 K33 ["## Validating input"]
       93 LOADK                            R21 K34 ["Put static, single-field limits on the FIELD, not in `validation`:"]
       94 LOADK                            R22 K35 ["- Must be filled in -> set the field's `required: true`."]
       95 LOADK                            R23 K36 ["- A number's range, or an array's item count -> set the field's `min`/`max`."]
       96 LOADK                            R24 K37 ["- One of a fixed set -> use inputType='%*' with 'options'."]
       97 GETUPVAL                         R26 10
       98 GETTABLEKS                       R26 R26 K38 ["Option"]
      100 NAMECALL                         R24 R24 K31 ["format"]
      102 CALL                             R24 2 1
      103 LOADK                            R25 K39 ["For example, a required count from 1 to 10 is just `{ \"name\": \"count\", \"inputType\": \"number\", \"required\": true, \"min\": 1, \"max\": 10 }` - do NOT write a `validation` rule for this."]
      104 SETLIST                          R9 R10 16 [1]
      106 LOADK                            R10 K40 ["Use the top-level `validation` argument ONLY for requirements that span more than one field (e.g. \"a prompt is required, but only when mode = text\"). Field limits and `validation` rules are all enforced together (combined with 'all'), so if a rule and a field's sugar constrain the same field the stricter of the two wins."]
      107 LOADK                            R11 K24 [""]
      108 LOADK                            R12 K41 ["## Result"]
      109 LOADK                            R13 K42 ["On submit, returns `values`: a map of each field's `name` to the entered value (e.g. `{ \"prompt\": \"a castle\", \"count\": 3 }`). On cancel, returns `dismissed: true` and no values."]
      110 SETLIST                          R9 R10 4 [17]
      112 LOADK                            R10 K43 ["\n"]
      113 CALL                             R8 2 -1
      114 NAMECALL                         R6 R6 K44 ["setDescription"]
      116 CALL                             R6 -1 1
      117 LOADK                            R8 K45 ["formId"]
      118 DUPTABLE                         R9 K50 [{["type"] = "string", ["description"] = "Client-managed identifier selecting a known form's presentation (heading, labels, wizard). Set by slash-command flows; leave unset when authoring a form directly."}]
      119 NAMECALL                         R6 R6 K51 ["addOptionalArgument"]
      121 CALL                             R6 3 1
      122 LOADK                            R8 K52 ["fields"]
      123 DUPTABLE                         R9 K56 [{["type"] = "array", ["description"] = "The fields to collect, in display order. A field only describes one input; cross-field requirements go in the top-level `validation` argument, never inside a field.", ["items"]}]
      124 DUPTABLE                         R10 K62 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
      125 DUPTABLE                         R11 K69 [{"name", "inputType", "initialValue", "required", "min", "max", "options"}]
      126 DUPTABLE                         R12 K71 [{["type"] = "string", ["description"] = "Identifier for this field; returned with the entered value."}]
      127 SETTABLEKS                       R12 R11 K63 ["name"]
      129 DUPTABLE                         R12 K73 [{["type"] = "string", ["description"], ["enum"]}]
      130 LOADK                            R14 K24 [""]
      131 LOADK                            R18 K74 ["What the field collects: '%*', '%*', '%*', "]
      132 GETUPVAL                         R20 10
      133 GETTABLEKS                       R20 R20 K75 ["String"]
      135 GETUPVAL                         R21 10
      136 GETTABLEKS                       R21 R21 K76 ["Number"]
      138 GETUPVAL                         R22 10
      139 GETTABLEKS                       R22 R22 K77 ["Boolean"]
      141 NAMECALL                         R18 R18 K31 ["format"]
      143 CALL                             R18 4 1
      144 MOVE                             R15 R18
      145 LOADK                            R18 K78 ["'%*' (a list of strings), '%*' (exactly one of 'options'), "]
      146 GETUPVAL                         R20 10
      147 GETTABLEKS                       R20 R20 K79 ["Array"]
      149 GETUPVAL                         R21 10
      150 GETTABLEKS                       R21 R21 K38 ["Option"]
      152 NAMECALL                         R18 R18 K31 ["format"]
      154 CALL                             R18 3 1
      155 MOVE                             R16 R18
      156 LOADK                            R17 K80 ["'%*', or '%*' (a picked instance)."]
      157 GETUPVAL                         R19 10
      158 GETTABLEKS                       R19 R19 K81 ["Image"]
      160 GETUPVAL                         R20 10
      161 GETTABLEKS                       R20 R20 K82 ["Instance"]
      163 NAMECALL                         R17 R17 K31 ["format"]
      165 CALL                             R17 3 1
      166 CONCAT                           R13 R14 R17
      167 SETTABLEKS                       R13 R12 K48 ["description"]
      169 NEWTABLE                         R13 0 7
      171 GETUPVAL                         R14 10
      172 GETTABLEKS                       R14 R14 K79 ["Array"]
      174 GETUPVAL                         R15 10
      175 GETTABLEKS                       R15 R15 K77 ["Boolean"]
      177 GETUPVAL                         R16 10
      178 GETTABLEKS                       R16 R16 K81 ["Image"]
      180 GETUPVAL                         R17 10
      181 GETTABLEKS                       R17 R17 K82 ["Instance"]
      183 GETUPVAL                         R18 10
      184 GETTABLEKS                       R18 R18 K76 ["Number"]
      186 GETUPVAL                         R19 10
      187 GETTABLEKS                       R19 R19 K38 ["Option"]
      189 GETUPVAL                         R20 10
      190 GETTABLEKS                       R20 R20 K75 ["String"]
      192 SETLIST                          R13 R14 7 [1]
      194 SETTABLEKS                       R13 R12 K72 ["enum"]
      196 SETTABLEKS                       R12 R11 K64 ["inputType"]
      198 DUPTABLE                         R12 K84 [{["description"] = "Optional starting value, matching inputType."}]
      199 SETTABLEKS                       R12 R11 K65 ["initialValue"]
      201 DUPTABLE                         R12 K87 [{["type"] = "boolean", ["description"] = "If true, the field must have a value in the results (a non-empty string, a picked instance, at least one array item, or -- for a boolean -- either true or false). For a requirement that depends on another field's value, use the top-level `validation` argument instead."}]
      202 SETTABLEKS                       R12 R11 K61 ["required"]
      204 DUPTABLE                         R12 K89 [{["type"] = "number", ["description"]}]
      205 LOADK                            R14 K24 [""]
      206 LOADK                            R18 K90 ["For inputType='%*': inclusive lower bound on the value. "]
      207 GETUPVAL                         R20 10
      208 GETTABLEKS                       R20 R20 K76 ["Number"]
      210 NAMECALL                         R18 R18 K31 ["format"]
      212 CALL                             R18 2 1
      213 MOVE                             R15 R18
      214 LOADK                            R18 K91 ["For inputType='%*': minimum item count. "]
      215 GETUPVAL                         R20 10
      216 GETTABLEKS                       R20 R20 K79 ["Array"]
      218 NAMECALL                         R18 R18 K31 ["format"]
      220 CALL                             R18 2 1
      221 MOVE                             R16 R18
      222 LOADK                            R17 K92 ["Ignored for other types."]
      223 CONCAT                           R13 R14 R17
      224 SETTABLEKS                       R13 R12 K48 ["description"]
      226 SETTABLEKS                       R12 R11 K66 ["min"]
      228 DUPTABLE                         R12 K89 [{["type"] = "number", ["description"]}]
      229 LOADK                            R14 K24 [""]
      230 LOADK                            R18 K93 ["For inputType='%*': inclusive upper bound on the value. "]
      231 GETUPVAL                         R20 10
      232 GETTABLEKS                       R20 R20 K76 ["Number"]
      234 NAMECALL                         R18 R18 K31 ["format"]
      236 CALL                             R18 2 1
      237 MOVE                             R15 R18
      238 LOADK                            R18 K94 ["For inputType='%*': maximum item count. "]
      239 GETUPVAL                         R20 10
      240 GETTABLEKS                       R20 R20 K79 ["Array"]
      242 NAMECALL                         R18 R18 K31 ["format"]
      244 CALL                             R18 2 1
      245 MOVE                             R16 R18
      246 LOADK                            R17 K92 ["Ignored for other types."]
      247 CONCAT                           R13 R14 R17
      248 SETTABLEKS                       R13 R12 K48 ["description"]
      250 SETTABLEKS                       R12 R11 K67 ["max"]
      252 DUPTABLE                         R12 K95 [{["type"] = "array", ["description"], ["items"]}]
      253 LOADK                            R13 K96 ["Required when inputType='%*': the ids to choose exactly one of."]
      254 GETUPVAL                         R15 10
      255 GETTABLEKS                       R15 R15 K38 ["Option"]
      257 NAMECALL                         R13 R13 K31 ["format"]
      259 CALL                             R13 2 1
      260 SETTABLEKS                       R13 R12 K48 ["description"]
      262 DUPTABLE                         R13 K97 [{["type"] = "string"}]
      263 SETTABLEKS                       R13 R12 K55 ["items"]
      265 SETTABLEKS                       R12 R11 K68 ["options"]
      267 SETTABLEKS                       R11 R10 K60 ["properties"]
      269 NEWTABLE                         R11 0 2
      271 LOADK                            R12 K63 ["name"]
      272 LOADK                            R13 K64 ["inputType"]
      273 SETLIST                          R11 R12 2 [1]
      275 SETTABLEKS                       R11 R10 K61 ["required"]
      277 SETTABLEKS                       R10 R9 K55 ["items"]
      279 NAMECALL                         R6 R6 K98 ["addArgument"]
      281 CALL                             R6 3 1
      282 LOADK                            R8 K99 ["validation"]
      283 DUPTABLE                         R9 K101 [{["type"] = "object", ["description"] = "Top-level argument, a sibling of `fields` (NOT a property of any field). For cross-field requirements ONLY - static single-field limits belong on the field via `required`/`min`/`max` (see the tool description's 'Validating input' section). Optional rule the entered values must satisfy before the form can be submitted; the tool also re-checks it on submit and errors if unmet. A rule is an object with a `kind`. Leaf rules inspect one field: 'nonEmpty' (`field` is filled in - a non-empty string/array, or a checked boolean), 'exists' (`field` has any value, including a boolean false), 'equals' (`field` == `value`), 'range' (a number `field` within `min`/`max`, or an array `field` whose item count is within `min`/`max`; both bounds inclusive and optional). Combinators nest other rules: 'all'/'any' take a `rules` array, 'not' takes a single `rule`, 'branch' reads `field` and applies the matching rule in `cases` (with optional `default`). Constants: 'always' / 'never'. Example - require a prompt only in text mode: { \"kind\": \"branch\", \"field\": \"promptMode\", \"cases\": { \"text\": { \"kind\": \"nonEmpty\", \"field\": \"textPrompt\" } } }.", ["properties"], ["required"]}]
      284 DUPTABLE                         R10 K109 [{"kind", "field", "value", "min", "max", "rules", "rule", "cases", "default"}]
      285 DUPTABLE                         R11 K111 [{["type"] = "string", ["enum"], ["description"] = "Which rule to apply."}]
      286 NEWTABLE                         R12 0 10
      288 GETUPVAL                         R13 11
      289 GETTABLEKS                       R13 R13 K112 ["All"]
      291 GETUPVAL                         R14 11
      292 GETTABLEKS                       R14 R14 K113 ["Always"]
      294 GETUPVAL                         R15 11
      295 GETTABLEKS                       R15 R15 K114 ["Any"]
      297 GETUPVAL                         R16 11
      298 GETTABLEKS                       R16 R16 K115 ["Branch"]
      300 GETUPVAL                         R17 11
      301 GETTABLEKS                       R17 R17 K116 ["Equals"]
      303 GETUPVAL                         R18 11
      304 GETTABLEKS                       R18 R18 K117 ["Exists"]
      306 GETUPVAL                         R19 11
      307 GETTABLEKS                       R19 R19 K118 ["Never"]
      309 GETUPVAL                         R20 11
      310 GETTABLEKS                       R20 R20 K119 ["Not"]
      312 GETUPVAL                         R21 11
      313 GETTABLEKS                       R21 R21 K120 ["NonEmpty"]
      315 GETUPVAL                         R22 11
      316 GETTABLEKS                       R22 R22 K121 ["Range"]
      318 SETLIST                          R12 R13 10 [1]
      320 SETTABLEKS                       R12 R11 K72 ["enum"]
      322 SETTABLEKS                       R11 R10 K102 ["kind"]
      324 DUPTABLE                         R11 K123 [{["type"] = "string", ["description"] = "For nonEmpty/exists/equals/range/branch: the field name to inspect."}]
      325 SETTABLEKS                       R11 R10 K103 ["field"]
      327 DUPTABLE                         R11 K125 [{["description"] = "For equals: the value `field` must equal."}]
      328 SETTABLEKS                       R11 R10 K104 ["value"]
      330 DUPTABLE                         R11 K127 [{["type"] = "number", ["description"] = "For range: inclusive lower bound on the number, or on an array field's item count (optional)."}]
      331 SETTABLEKS                       R11 R10 K66 ["min"]
      333 DUPTABLE                         R11 K129 [{["type"] = "number", ["description"] = "For range: inclusive upper bound on the number, or on an array field's item count (optional)."}]
      334 SETTABLEKS                       R11 R10 K67 ["max"]
      336 DUPTABLE                         R11 K131 [{["type"] = "array", ["description"] = "For all/any: the nested rules to combine."}]
      337 SETTABLEKS                       R11 R10 K105 ["rules"]
      339 DUPTABLE                         R11 K133 [{["type"] = "object", ["description"] = "For not: the nested rule that must NOT pass."}]
      340 SETTABLEKS                       R11 R10 K106 ["rule"]
      342 DUPTABLE                         R11 K135 [{["type"] = "object", ["description"] = "For branch: map from the branch field's value to a nested rule."}]
      343 SETTABLEKS                       R11 R10 K107 ["cases"]
      345 DUPTABLE                         R11 K137 [{["type"] = "object", ["description"] = "For branch: the nested rule applied when no case matches."}]
      346 SETTABLEKS                       R11 R10 K108 ["default"]
      348 SETTABLEKS                       R10 R9 K60 ["properties"]
      350 NEWTABLE                         R10 0 1
      352 LOADK                            R11 K102 ["kind"]
      353 SETLIST                          R10 R11 1 [1]
      355 SETTABLEKS                       R10 R9 K61 ["required"]
      357 NAMECALL                         R6 R6 K51 ["addOptionalArgument"]
      359 CALL                             R6 3 1
      360 LOADK                            R8 K138 ["Ask For Input"]
      361 NAMECALL                         R6 R6 K139 ["setTitle"]
      363 CALL                             R6 2 1
      364 DUPTABLE                         R8 K146 [{["title"] = "Ask For Input", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      365 NAMECALL                         R6 R6 K147 ["setAnnotations"]
      367 CALL                             R6 2 1
      368 MOVE                             R8 R5
      369 NAMECALL                         R6 R6 K148 ["setHandler"]
      371 CALL                             R6 2 1
      372 NAMECALL                         R6 R6 K149 ["build"]
      374 CALL                             R6 1 1
      375 DUPTABLE                         R7 K152 [{"definition", "toolCallOptions"}]
      376 SETTABLEKS                       R6 R7 K150 ["definition"]
      378 DUPTABLE                         R8 K155 [{["timeout"] = 200000000}]
      379 SETTABLEKS                       R8 R7 K151 ["toolCallOptions"]
      381 CLOSEUPVALS                      R3
      382 RETURN                           R7 1

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
       64 GETTABLEKS                       R11 R0 K20 ["Tools"]
       66 GETTABLEKS                       R11 R11 K21 ["ToolTypes"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R0 K14 ["Util"]
       73 GETTABLEKS                       R12 R12 K15 ["AskInput"]
       75 GETTABLEKS                       R12 R12 K22 ["Validation"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R4 K23 ["Remote"]
       80 GETTABLEKS                       R13 R5 K14 ["Util"]
       82 GETTABLEKS                       R13 R13 K24 ["ToolBuilder"]
       84 GETTABLEKS                       R14 R5 K14 ["Util"]
       86 GETTABLEKS                       R14 R14 K25 ["ToolResult"]
       88 GETTABLEKS                       R15 R10 K26 ["ToolNames"]
       90 GETTABLEKS                       R16 R7 K27 ["INPUT_TYPE"]
       92 GETTABLEKS                       R17 R7 K28 ["RULE_KIND"]
       94 DUPCLOSURE                       R18 K29 [PROTO_1]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R1
       97 DUPCLOSURE                       R19 K30 [PROTO_2]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R18
      100 DUPCLOSURE                       R20 K31 [PROTO_3]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R19
      104 DUPCLOSURE                       R21 K32 [PROTO_8]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R20
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R17
      117 RETURN                           R21 1
