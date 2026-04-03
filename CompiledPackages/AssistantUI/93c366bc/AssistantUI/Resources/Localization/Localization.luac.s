PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+1]
        8 LOADB                            R3 0
        9 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioService is not available in this environment"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["StudioLocaleId"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_3]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K3 ["LocalPlayer"]
       11 JUMPIF                           R2 ; [+2]
       12 LOADK                            R3 K4 ["en-us"]
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R2 K5 ["LocaleId"]
       16 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioService is not available in this environment"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 LOADK                            R2 K3 ["StudioLocaleId"]
        9 NAMECALL                         R0 R0 K4 ["GetPropertyChangedSignal"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_5]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K3 ["LocalPlayer"]
       11 JUMPIF                           R2 ; [+7]
       12 GETIMPORT                        R4 K6 [Instance.new]
       14 LOADK                            R5 K7 ["BindableEvent"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R3 R4 K8 ["Event"]
       18 RETURN                           R3 1
       19 LOADK                            R5 K9 ["LocaleId"]
       20 NAMECALL                         R3 R2 K10 ["GetPropertyChangedSignal"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 GETUPVAL                         R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+28]
       12 GETIMPORT                        R1 K1 [pcall]
       14 DUPCLOSURE                       R2 K2 [PROTO_3]
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CALL                             R1 1 2
       18 JUMPIFNOT                        R1 ; [+2]
       19 MOVE                             R0 R2
       20 JUMP                             ; [+8]
       21 GETUPVAL                         R4 5
       22 GETTABLEKS                       R3 R4 K3 ["LocalPlayer"]
       24 JUMPIF                           R3 ; [+2]
       25 LOADK                            R0 K4 ["en-us"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       29 GETIMPORT                        R1 K8 [string.gsub]
       31 GETIMPORT                        R2 K10 [string.lower]
       33 MOVE                             R3 R0
       34 CALL                             R2 1 1
       35 LOADK                            R3 K11 ["_"]
       36 LOADK                            R4 K12 ["-"]
       37 CALL                             R1 3 1
       38 MOVE                             R0 R1
       39 RETURN                           R0 1
       40 GETIMPORT                        R1 K1 [pcall]
       42 DUPCLOSURE                       R2 K2 [PROTO_3]
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CALL                             R1 1 2
       46 JUMPIFNOT                        R1 ; [+2]
       47 MOVE                             R0 R2
       48 RETURN                           R0 1
       49 GETUPVAL                         R4 5
       50 GETTABLEKS                       R3 R4 K3 ["LocalPlayer"]
       52 JUMPIF                           R3 ; [+2]
       53 LOADK                            R0 K4 ["en-us"]
       54 RETURN                           R0 1
       55 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       57 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLocaleAndTranslator"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["localeChanged"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Localization props is expected to be a table."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R3 R0 K6 ["stringResourceTable"]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       23 LOADK                            R3 K7 ["Localization must have a .csv string resource table for English strings"]
       24 GETIMPORT                        R1 K5 [assert]
       26 CALL                             R1 2 0
       27 GETTABLEKS                       R3 R0 K8 ["translationResourceTable"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       35 LOADK                            R3 K9 ["Localization must have a .csv string resource table of translations"]
       36 GETIMPORT                        R1 K5 [assert]
       38 CALL                             R1 2 0
       39 GETTABLEKS                       R4 R0 K10 ["pluginName"]
       41 FASTCALL1                        TYPE R4 ; [+2]
       42 GETIMPORT                        R3 K1 [type]
       44 CALL                             R3 1 1
       45 JUMPIFEQKS                       R3 K11 ["string"] ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       51 LOADK                            R3 K12 ["Please specify the plugin's name"]
       52 GETIMPORT                        R1 K5 [assert]
       54 CALL                             R1 2 0
       55 GETTABLEKS                       R1 R0 K13 ["libraries"]
       57 JUMPIFEQKNIL                     R1 ; [+85]
       59 GETTABLEKS                       R4 R0 K13 ["libraries"]
       61 FASTCALL1                        TYPE R4 ; [+2]
       62 GETIMPORT                        R3 K1 [type]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
       67 LOADB                            R2 0 +1
       68 LOADB                            R2 1
       69 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       71 LOADK                            R3 K14 ["Localization libraries prop must be a table or nil"]
       72 GETIMPORT                        R1 K5 [assert]
       74 CALL                             R1 2 0
       75 GETIMPORT                        R1 K16 [pairs]
       77 GETTABLEKS                       R2 R0 K13 ["libraries"]
       79 CALL                             R1 1 3
       80 FORGPREP_NEXT                    R1
       81 FASTCALL1                        TYPE R4 ; [+3]
       82 MOVE                             R9 R4
       83 GETIMPORT                        R8 K1 [type]
       85 CALL                             R8 1 1
       86 JUMPIFEQKS                       R8 K11 ["string"] ; [+2]
       88 LOADB                            R7 0 +1
       89 LOADB                            R7 1
       90 FASTCALL2K                       ASSERT R7 K17 ; [+4]
       92 LOADK                            R8 K17 ["Localization libraries key must be a string"]
       93 GETIMPORT                        R6 K5 [assert]
       95 CALL                             R6 2 0
       96 FASTCALL1                        TYPE R5 ; [+3]
       97 MOVE                             R9 R5
       98 GETIMPORT                        R8 K1 [type]
      100 CALL                             R8 1 1
      101 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
      103 LOADB                            R7 0 +1
      104 LOADB                            R7 1
      105 FASTCALL2K                       ASSERT R7 K18 ; [+4]
      107 LOADK                            R8 K18 ["Localization libraries value must be a table"]
      108 GETIMPORT                        R6 K5 [assert]
      110 CALL                             R6 2 0
      111 GETTABLEKS                       R8 R5 K6 ["stringResourceTable"]
      113 JUMPIFNOTEQKNIL                  R8 ; [+2]
      115 LOADB                            R7 0 +1
      116 LOADB                            R7 1
      117 GETIMPORT                        R8 K20 [string.format]
      119 LOADK                            R9 K21 ["Localization table %s must have a .csv string resource table for English strings"]
      120 MOVE                             R10 R4
      121 CALL                             R8 2 -1
      122 FASTCALL                         ASSERT ; [+2]
      123 GETIMPORT                        R6 K5 [assert]
      125 CALL                             R6 -1 0
      126 GETTABLEKS                       R8 R5 K8 ["translationResourceTable"]
      128 JUMPIFNOTEQKNIL                  R8 ; [+2]
      130 LOADB                            R7 0 +1
      131 LOADB                            R7 1
      132 GETIMPORT                        R8 K20 [string.format]
      134 LOADK                            R9 K22 ["Localization table %s must have a .csv string resource table of translations"]
      135 MOVE                             R10 R4
      136 CALL                             R8 2 -1
      137 FASTCALL                         ASSERT ; [+2]
      138 GETIMPORT                        R6 K5 [assert]
      140 CALL                             R6 -1 0
      141 FORGLOOP                         R1 2 ; [-61]
      143 GETTABLEKS                       R1 R0 K6 ["stringResourceTable"]
      145 GETTABLEKS                       R2 R0 K8 ["translationResourceTable"]
      147 GETTABLEKS                       R3 R0 K23 ["getLocale"]
      149 GETTABLEKS                       R4 R0 K24 ["overrideLocaleId"]
      151 GETTABLEKS                       R5 R0 K25 ["overrideLocaleChangedSignal"]
      153 GETTABLEKS                       R6 R0 K26 ["namespace"]
      155 GETTABLEKS                       R7 R0 K10 ["pluginName"]
      157 JUMPIFNOTEQKNIL                  R6 ; [+2]
      159 LOADK                            R6 K27 ["Studio"]
      160 LOADNIL                          R8
      161 JUMPIFNOT                        R5 ; [+2]
      162 MOVE                             R8 R5
      163 JUMP                             ; [+3]
      164 GETUPVAL                         R9 0
      165 CALL                             R9 0 1
      166 MOVE                             R8 R9
      167 NEWCLOSURE                       R9 P0
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R4
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          UPVAL U4
      174 DUPTABLE                         R10 K34 [{"localeChanged", "externalLocaleChanged", "externalLocaleChangedConnection", "locale", "keyNamespace", "keyPluginName", "getLocale"}]
      175 GETUPVAL                         R12 5
      176 GETTABLEKS                       R11 R12 K35 ["new"]
      178 CALL                             R11 0 1
      179 SETTABLEKS                       R11 R10 K28 ["localeChanged"]
      181 SETTABLEKS                       R8 R10 K29 ["externalLocaleChanged"]
      183 LOADNIL                          R11
      184 SETTABLEKS                       R11 R10 K30 ["externalLocaleChangedConnection"]
      186 LOADK                            R11 K36 ["en-us"]
      187 SETTABLEKS                       R11 R10 K31 ["locale"]
      189 SETTABLEKS                       R6 R10 K32 ["keyNamespace"]
      191 SETTABLEKS                       R7 R10 K33 ["keyPluginName"]
      193 SETTABLEKS                       R9 R10 K23 ["getLocale"]
      195 GETUPVAL                         R13 6
      196 GETTABLEKS                       R12 R13 K37 ["Dictionary"]
      198 GETTABLEKS                       R11 R12 K38 ["join"]
      200 GETTABLEKS                       R12 R0 K13 ["libraries"]
      202 JUMPIF                           R12 ; [+2]
      203 NEWTABLE                         R12 0 0
      205 NEWTABLE                         R13 1 0
      207 GETTABLEKS                       R14 R10 K33 ["keyPluginName"]
      209 DUPTABLE                         R15 K39 [{"stringResourceTable", "translationResourceTable"}]
      210 SETTABLEKS                       R1 R15 K6 ["stringResourceTable"]
      212 SETTABLEKS                       R2 R15 K8 ["translationResourceTable"]
      214 SETTABLE                         R15 R13 R14
      215 CALL                             R11 2 1
      216 SETTABLEKS                       R11 R10 K40 ["projects"]
      218 NEWTABLE                         R11 0 0
      220 SETTABLEKS                       R11 R10 K41 ["translators"]
      222 NEWTABLE                         R11 0 0
      224 SETTABLEKS                       R11 R10 K42 ["fallbackTranslators"]
      226 GETUPVAL                         R13 7
      227 FASTCALL2                        SETMETATABLE R10 R13 ; [+4]
      229 MOVE                             R12 R10
      230 GETIMPORT                        R11 K44 [setmetatable]
      232 CALL                             R11 2 0
      233 GETTABLEKS                       R11 R10 K29 ["externalLocaleChanged"]
      235 NEWCLOSURE                       R13 P1
      236 CAPTURE                          VAL R10
      237 NAMECALL                         R11 R11 K45 ["Connect"]
      239 CALL                             R11 2 1
      240 SETTABLEKS                       R11 R10 K46 ["localeChangedConnection"]
      242 NAMECALL                         R11 R10 K47 ["updateLocaleAndTranslator"]
      244 CALL                             R11 1 0
      245 RETURN                           R10 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["localeChanged"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R6 R0 K0 ["keyPluginName"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R0 K1 ["getProjectText"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R1 0
        2 LOADNIL                          R2
        3 RETURN                           R1 2
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 2
       11 RETURN                           R1 2

PROTO_15:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R8 R1
        2 GETIMPORT                        R7 K1 [type]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       11 LOADK                            R7 K3 ["Cannot fetch the string without a project"]
       12 GETIMPORT                        R5 K5 [assert]
       14 CALL                             R5 2 0
       15 FASTCALL1                        TYPE R2 ; [+3]
       16 MOVE                             R8 R2
       17 GETIMPORT                        R7 K1 [type]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       26 LOADK                            R7 K6 ["Cannot fetch the string without a scope"]
       27 GETIMPORT                        R5 K5 [assert]
       29 CALL                             R5 2 0
       30 FASTCALL1                        TYPE R3 ; [+3]
       31 MOVE                             R8 R3
       32 GETIMPORT                        R7 K1 [type]
       34 CALL                             R7 1 1
       35 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       41 LOADK                            R7 K7 ["Cannot fetch a string without the key"]
       42 GETIMPORT                        R5 K5 [assert]
       44 CALL                             R5 2 0
       45 GETTABLEKS                       R8 R0 K8 ["projects"]
       47 GETTABLE                         R7 R8 R1
       48 JUMPIFNOTEQKNIL                  R7 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 GETIMPORT                        R7 K10 [string.format]
       54 LOADK                            R8 K11 ["Project %s is not available"]
       55 MOVE                             R9 R1
       56 CALL                             R7 2 -1
       57 FASTCALL                         ASSERT ; [+2]
       58 GETIMPORT                        R5 K5 [assert]
       60 CALL                             R5 -1 0
       61 GETIMPORT                        R5 K10 [string.format]
       63 LOADK                            R6 K12 ["%s.%s.%s.%s"]
       64 GETTABLEKS                       R7 R0 K13 ["keyNamespace"]
       66 MOVE                             R8 R1
       67 MOVE                             R9 R2
       68 MOVE                             R10 R3
       69 CALL                             R5 5 1
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 GETTABLEKS                       R8 R0 K14 ["translators"]
       75 GETTABLE                         R7 R8 R1
       76 GETTABLEKS                       R9 R0 K15 ["fallbackTranslators"]
       78 GETTABLE                         R8 R9 R1
       79 LOADNIL                          R9
       80 LOADNIL                          R10
       81 GETTABLEKS                       R11 R0 K16 ["locale"]
       83 JUMPIFNOTEQKS                    R11 K17 ["en-us"] ; [+19]
       85 JUMPIF                           R8 ; [+3]
       86 LOADB                            R11 0
       87 LOADNIL                          R12
       88 JUMP                             ; [+9]
       89 GETIMPORT                        R13 K19 [pcall]
       91 NEWCLOSURE                       R14 P1
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CALL                             R13 1 2
       96 MOVE                             R11 R13
       97 MOVE                             R12 R14
       98 MOVE                             R9 R11
       99 MOVE                             R10 R12
      100 JUMPIFNOT                        R9 ; [+36]
      101 RETURN                           R10 1
      102 JUMP                             ; [+34]
      103 JUMPIF                           R7 ; [+3]
      104 LOADB                            R11 0
      105 LOADNIL                          R12
      106 JUMP                             ; [+9]
      107 GETIMPORT                        R13 K19 [pcall]
      109 NEWCLOSURE                       R14 P1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R4
      113 CALL                             R13 1 2
      114 MOVE                             R11 R13
      115 MOVE                             R12 R14
      116 MOVE                             R9 R11
      117 MOVE                             R10 R12
      118 JUMPIFNOT                        R9 ; [+1]
      119 RETURN                           R10 1
      120 JUMPIF                           R8 ; [+3]
      121 LOADB                            R11 0
      122 LOADNIL                          R12
      123 JUMP                             ; [+9]
      124 GETIMPORT                        R13 K19 [pcall]
      126 NEWCLOSURE                       R14 P1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 CALL                             R13 1 2
      131 MOVE                             R11 R13
      132 MOVE                             R12 R14
      133 MOVE                             R9 R11
      134 MOVE                             R10 R12
      135 JUMPIFNOT                        R9 ; [+1]
      136 RETURN                           R10 1
      137 MOVE                             R12 R10
      138 JUMPIFNOT                        R12 ; [+9]
      139 FASTCALL1                        TYPEOF R10 ; [+3]
      140 MOVE                             R14 R10
      141 GETIMPORT                        R13 K21 [typeof]
      143 CALL                             R13 1 1
      144 JUMPIFEQKS                       R13 K2 ["string"] ; [+2]
      146 LOADB                            R12 0 +1
      147 LOADB                            R12 1
      148 FASTCALL2K                       ASSERT R12 K22 ; [+4]
      150 LOADK                            R13 K22 ["Failed to get translated string"]
      151 GETIMPORT                        R11 K5 [assert]
      153 CALL                             R11 2 0
      154 GETIMPORT                        R12 K19 [pcall]
      156 LOADK                            R14 K23 ["RefactorTranslatorInstance"]
      157 NEWCLOSURE                       R13 P2
      158 CAPTURE                          VAL R14
      159 CALL                             R12 1 2
      160 JUMPIFNOT                        R12 ; [+2]
      161 MOVE                             R11 R13
      162 JUMPIF                           R11 ; [+1]
      163 LOADB                            R11 0
      164 JUMPIFNOT                        R11 ; [+19]
      165 GETTABLEKS                       R11 R0 K24 ["keyPluginName"]
      167 JUMPIFEQKS                       R11 K25 ["Test"] ; [+34]
      169 JUMPIF                           R9 ; [+32]
      170 GETIMPORT                        R11 K27 [string.find]
      172 MOVE                             R12 R10
      173 LOADK                            R13 K28 ["Key .* not found for locale"]
      174 CALL                             R11 2 1
      175 JUMPIF                           R11 ; [+26]
      176 GETIMPORT                        R11 K30 [warn]
      178 MOVE                             R12 R10
      179 GETIMPORT                        R13 K33 [debug.traceback]
      181 CALL                             R13 0 -1
      182 CALL                             R11 -1 0
      183 RETURN                           R5 1
      184 GETTABLEKS                       R11 R0 K24 ["keyPluginName"]
      186 JUMPIFEQKS                       R11 K25 ["Test"] ; [+15]
      188 JUMPIF                           R9 ; [+13]
      189 GETIMPORT                        R11 K27 [string.find]
      191 MOVE                             R12 R10
      192 LOADK                            R13 K34 ["LocalizationTable or parent tables do not contain a translation"]
      193 CALL                             R11 2 1
      194 JUMPIF                           R11 ; [+7]
      195 GETIMPORT                        R11 K30 [warn]
      197 MOVE                             R12 R10
      198 GETIMPORT                        R13 K33 [debug.traceback]
      200 CALL                             R13 0 -1
      201 CALL                             R11 -1 0
      202 RETURN                           R5 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["getLocale"]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K1 ["locale"]
        5 GETIMPORT                        R1 K3 [pairs]
        7 GETTABLEKS                       R2 R0 K4 ["projects"]
        9 CALL                             R1 1 3
       10 FORGPREP_NEXT                    R1
       11 GETTABLEKS                       R6 R0 K5 ["translators"]
       13 GETTABLEKS                       R7 R5 K6 ["translationResourceTable"]
       15 GETTABLEKS                       R9 R0 K1 ["locale"]
       17 NAMECALL                         R7 R7 K7 ["GetTranslator"]
       19 CALL                             R7 2 1
       20 SETTABLE                         R7 R6 R4
       21 GETTABLEKS                       R6 R0 K8 ["fallbackTranslators"]
       23 GETTABLEKS                       R7 R5 K9 ["stringResourceTable"]
       25 LOADK                            R9 K10 ["en-us"]
       26 NAMECALL                         R7 R7 K7 ["GetTranslator"]
       28 CALL                             R7 2 1
       29 SETTABLE                         R7 R6 R4
       30 FORGLOOP                         R1 2 ; [-20]
       32 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%."]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LENGTH                           R2 R0
        7 ADDK                             R1 R2 K4 [1]
        8 RETURN                           R1 1

PROTO_19:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K3 [math.abs]
        8 CALL                             R3 1 1
        9 FASTCALL1                        MATH_LOG10 R3 ; [+2]
       10 GETIMPORT                        R2 K5 [math.log10]
       12 CALL                             R2 1 1
       13 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       14 GETIMPORT                        R1 K7 [math.floor]
       16 CALL                             R1 1 1
       17 ADDK                             R3 R1 K8 [1]
       18 MINUS                            R2 R3
       19 RETURN                           R2 1

PROTO_20:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R3 0
        3 JUMP                             ; [+15]
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R7 R0
        6 GETIMPORT                        R6 K3 [math.abs]
        8 CALL                             R6 1 1
        9 FASTCALL1                        MATH_LOG10 R6 ; [+2]
       10 GETIMPORT                        R5 K5 [math.log10]
       12 CALL                             R5 1 1
       13 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       14 GETIMPORT                        R4 K7 [math.floor]
       16 CALL                             R4 1 1
       17 ADDK                             R5 R4 K8 [1]
       18 MINUS                            R3 R5
       19 LOADN                            R5 10
       20 ADD                              R6 R1 R3
       21 POW                              R4 R5 R6
       22 LOADNIL                          R5
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K9 ["Truncate"]
       26 JUMPIFNOTEQ                      R2 R6 ; [+8]
       28 MUL                              R7 R0 R4
       29 FASTCALL1                        MATH_MODF R7 ; [+2]
       30 GETIMPORT                        R6 K11 [math.modf]
       32 CALL                             R6 1 1
       33 MOVE                             R5 R6
       34 JUMP                             ; [+7]
       35 MUL                              R8 R0 R4
       36 ADDK                             R7 R8 K12 [0.5]
       37 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       38 GETIMPORT                        R6 K7 [math.floor]
       40 CALL                             R6 1 1
       41 MOVE                             R5 R6
       42 DIV                              R6 R5 R4
       43 RETURN                           R6 1

PROTO_21:
        0 MOVE                             R2 R0
        1 GETIMPORT                        R3 K2 [string.format]
        3 LOADK                            R4 K3 ["%%1%s%%2"]
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K5 [string.gsub]
        8 MOVE                             R5 R2
        9 LOADK                            R6 K6 ["^(-?%d+)(%d%d%d)"]
       10 MOVE                             R7 R3
       11 CALL                             R4 3 2
       12 MOVE                             R2 R4
       13 JUMPIFEQKN                       R5 K7 [0] ; [+2]
       15 JUMPBACK                         ; [-10]
       16 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["entries"]
        2 GETTABLEN                        R4 R3 1
        3 FASTCALL1                        MATH_ABS R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K3 [math.abs]
        7 CALL                             R5 1 1
        8 LENGTH                           R8 R3
        9 LOADN                            R6 2
       10 LOADN                            R7 255
       11 FORNPREP                         R6
       12 GETTABLE                         R9 R3 R8
       13 LOADNIL                          R10
       14 GETUPVAL                         R12 0
       15 GETTABLEKS                       R11 R12 K4 ["Truncate"]
       17 JUMPIFNOTEQ                      R2 R11 ; [+3]
       19 GETTABLEN                        R10 R9 1
       20 JUMP                             ; [+6]
       21 GETTABLEN                        R11 R9 1
       22 SUBK                             R15 R8 K6 [1]
       23 GETTABLE                         R14 R3 R15
       24 GETTABLEN                        R13 R14 1
       25 DIVK                             R12 R13 K5 [2]
       26 SUB                              R10 R11 R12
       27 JUMPIFNOTLE                      R10 R5 ; [+3]
       29 MOVE                             R4 R9
       30 RETURN                           R4 1
       31 FORNLOOP                         R6
       32 RETURN                           R4 1

PROTO_23:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADK                            R2 K1 ["0"]
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K2 ["locale"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["en-us"]
       12 GETTABLEKS                       R3 R2 K4 ["groupDelimiter"]
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R1
       17 GETTABLEKS                       R5 R2 K4 ["groupDelimiter"]
       19 CALL                             R3 2 1
       20 RETURN                           R3 1
       21 RETURN                           R1 1

PROTO_24:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADK                            R4 K1 ["0"]
        3 RETURN                           R4 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+4]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R2 R4 K2 ["RoundToClosest"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADN                            R3 3
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R6 R0 K3 ["locale"]
       15 GETTABLE                         R4 R5 R6
       16 JUMPIF                           R4 ; [+3]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K4 ["en-us"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R4
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 CALL                             R5 3 1
       25 GETTABLEN                        R6 R5 1
       26 GETTABLEN                        R7 R5 2
       27 DIV                              R9 R1 R6
       28 MOVE                             R10 R3
       29 MOVE                             R11 R2
       30 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       32 LOADN                            R12 0
       33 JUMP                             ; [+15]
       34 FASTCALL1                        MATH_ABS R9 ; [+3]
       35 MOVE                             R16 R9
       36 GETIMPORT                        R15 K7 [math.abs]
       38 CALL                             R15 1 1
       39 FASTCALL1                        MATH_LOG10 R15 ; [+2]
       40 GETIMPORT                        R14 K9 [math.log10]
       42 CALL                             R14 1 1
       43 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       44 GETIMPORT                        R13 K11 [math.floor]
       46 CALL                             R13 1 1
       47 ADDK                             R14 R13 K12 [1]
       48 MINUS                            R12 R14
       49 LOADN                            R14 10
       50 ADD                              R15 R10 R12
       51 POW                              R13 R14 R15
       52 LOADNIL                          R14
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R15 R16 K13 ["Truncate"]
       56 JUMPIFNOTEQ                      R11 R15 ; [+8]
       58 MUL                              R16 R9 R13
       59 FASTCALL1                        MATH_MODF R16 ; [+2]
       60 GETIMPORT                        R15 K15 [math.modf]
       62 CALL                             R15 1 1
       63 MOVE                             R14 R15
       64 JUMP                             ; [+7]
       65 MUL                              R17 R9 R13
       66 ADDK                             R16 R17 K16 [0.5]
       67 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       68 GETIMPORT                        R15 K11 [math.floor]
       70 CALL                             R15 1 1
       71 MOVE                             R14 R15
       72 DIV                              R8 R14 R13
       73 LOADNIL                          R9
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R10 R11 K13 ["Truncate"]
       77 JUMPIFNOTEQ                      R2 R10 ; [+8]
       79 MULK                             R11 R8 K17 [10]
       80 FASTCALL1                        MATH_MODF R11 ; [+2]
       81 GETIMPORT                        R10 K15 [math.modf]
       83 CALL                             R10 1 1
       84 DIVK                             R9 R10 K17 [10]
       85 JUMP                             ; [+7]
       86 MULK                             R12 R8 K17 [10]
       87 ADDK                             R11 R12 K16 [0.5]
       88 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       89 GETIMPORT                        R10 K11 [math.floor]
       91 CALL                             R10 1 1
       92 DIVK                             R9 R10 K17 [10]
       93 FASTCALL1                        TOSTRING R9 ; [+3]
       94 MOVE                             R11 R9
       95 GETIMPORT                        R10 K19 [tostring]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K22 [string.find]
      100 MOVE                             R12 R10
      101 LOADK                            R13 K23 ["%."]
      102 CALL                             R11 2 1
      103 JUMPIF                           R11 ; [+2]
      104 LENGTH                           R12 R10
      105 ADDK                             R11 R12 K12 [1]
      106 LOADN                            R14 1
      107 SUBK                             R15 R11 K12 [1]
      108 FASTCALL3                        STRING_SUB R10 R14 R15
      110 MOVE                             R13 R10
      111 GETIMPORT                        R12 K25 [string.sub]
      113 CALL                             R12 3 1
      114 ADDK                             R15 R11 K12 [1]
      115 LENGTH                           R16 R10
      116 FASTCALL3                        STRING_SUB R10 R15 R16
      118 MOVE                             R14 R10
      119 GETIMPORT                        R13 K25 [string.sub]
      121 CALL                             R13 3 1
      122 GETTABLEKS                       R14 R4 K26 ["groupDelimiter"]
      124 JUMPIFNOT                        R14 ; [+6]
      125 GETUPVAL                         R14 3
      126 MOVE                             R15 R12
      127 GETTABLEKS                       R16 R4 K26 ["groupDelimiter"]
      129 CALL                             R14 2 1
      130 MOVE                             R12 R14
      131 LENGTH                           R14 R13
      132 LOADN                            R15 0
      133 JUMPIFNOTLT                      R15 R14 ; [+8]
      135 MOVE                             R15 R12
      136 GETTABLEKS                       R16 R4 K27 ["decimalSeparator"]
      138 MOVE                             R17 R13
      139 MOVE                             R18 R7
      140 CONCAT                           R14 R15 R18
      141 RETURN                           R14 1
      142 MOVE                             R15 R12
      143 MOVE                             R16 R7
      144 CONCAT                           R14 R15 R16
      145 RETURN                           R14 1

PROTO_25:
        0 LOADK                            R3 K0 [""]
        1 JUMPIFNOT                        R2 ; [+35]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R5 R2
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFEQKS                       R4 K3 ["table"] ; [+6]
        9 GETIMPORT                        R4 K5 [error]
       11 LOADK                            R5 K6 ["Args must be a table"]
       12 CALL                             R4 1 0
       13 JUMP                             ; [+23]
       14 GETIMPORT                        R4 K8 [pairs]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 GETIMPORT                        R9 K11 [string.format]
       21 LOADK                            R10 K12 ["%s,%s:%s"]
       22 MOVE                             R11 R3
       23 MOVE                             R12 R7
       24 MOVE                             R13 R8
       25 CALL                             R9 4 1
       26 MOVE                             R3 R9
       27 FORGLOOP                         R4 2 ; [-9]
       29 FASTCALL2K                       STRING_SUB R3 K13 ; [+5]
       31 MOVE                             R5 R3
       32 LOADK                            R6 K13 [2]
       33 GETIMPORT                        R4 K15 [string.sub]
       35 CALL                             R4 2 1
       36 MOVE                             R3 R4
       37 GETIMPORT                        R4 K11 [string.format]
       39 LOADK                            R5 K16 ["%s:[%s]"]
       40 MOVE                             R6 R1
       41 MOVE                             R7 R3
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

PROTO_26:
        0 DUPTABLE                         R0 K1 [{"FormatByKey"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_25]
        2 SETTABLEKS                       R1 R0 K0 ["FormatByKey"]
        4 RETURN                           R0 1

PROTO_27:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_28:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"GetTranslator"}]
        6 DUPCLOSURE                       R2 K2 [PROTO_26]
        7 SETTABLEKS                       R2 R1 K0 ["GetTranslator"]
        9 GETTABLEKS                       R2 R0 K3 ["getLocale"]
       11 JUMPIF                           R2 ; [+1]
       12 DUPCLOSURE                       R2 K4 [PROTO_27]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K5 ["new"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K6 ["Dictionary"]
       19 GETTABLEKS                       R4 R5 K7 ["join"]
       21 DUPTABLE                         R5 K12 [{"stringResourceTable", "translationResourceTable", "pluginName", "overrideLocaleChangedSignal", "getLocale"}]
       22 SETTABLEKS                       R1 R5 K8 ["stringResourceTable"]
       24 SETTABLEKS                       R1 R5 K9 ["translationResourceTable"]
       26 LOADK                            R6 K13 ["Test"]
       27 SETTABLEKS                       R6 R5 K10 ["pluginName"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K5 ["new"]
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K11 ["overrideLocaleChangedSignal"]
       35 SETTABLEKS                       R2 R5 K3 ["getLocale"]
       37 MOVE                             R6 R0
       38 JUMPIF                           R6 ; [+2]
       39 NEWTABLE                         R6 0 0
       41 CALL                             R4 2 1
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CALL                             R1 1 2
       11 GETIMPORT                        R3 K8 [script]
       13 LOADK                            R5 K9 ["AssistantUI"]
       14 NAMECALL                         R3 R3 K10 ["FindFirstAncestor"]
       16 CALL                             R3 2 1
       17 GETIMPORT                        R4 K12 [require]
       19 GETTABLEKS                       R6 R3 K13 ["Parent"]
       21 GETTABLEKS                       R5 R6 K14 ["Cryo"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K12 [require]
       26 GETTABLEKS                       R7 R3 K13 ["Parent"]
       28 GETTABLEKS                       R6 R7 K15 ["Signal"]
       30 CALL                             R5 1 1
       31 NEWTABLE                         R6 16 0
       33 SETTABLEKS                       R6 R6 K16 ["__index"]
       35 LOADB                            R7 0
       36 GETIMPORT                        R8 K5 [pcall]
       38 GETIMPORT                        R10 K1 [game]
       40 GETTABLEKS                       R9 R10 K17 ["DefineFastFlag"]
       42 GETIMPORT                        R10 K1 [game]
       44 LOADK                            R11 K18 ["CorrectlyParseQTLocale"]
       45 LOADB                            R12 0
       46 CALL                             R8 4 2
       47 JUMPIFNOT                        R8 ; [+1]
       48 MOVE                             R7 R9
       49 DUPCLOSURE                       R8 K19 [PROTO_2]
       50 DUPCLOSURE                       R9 K20 [PROTO_4]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 DUPCLOSURE                       R10 K21 [PROTO_6]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R0
       58 NEWCLOSURE                       R11 P4
       59 CAPTURE                          VAL R10
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R11 R6 K22 ["new"]
       69 DUPCLOSURE                       R11 K23 [PROTO_10]
       70 SETTABLEKS                       R11 R6 K24 ["getSignal"]
       72 DUPCLOSURE                       R11 K25 [PROTO_11]
       73 SETTABLEKS                       R11 R6 K26 ["getConsumerItem"]
       75 DUPCLOSURE                       R11 K27 [PROTO_12]
       76 SETTABLEKS                       R11 R6 K28 ["getText"]
       78 DUPCLOSURE                       R11 K29 [PROTO_15]
       79 SETTABLEKS                       R11 R6 K30 ["getProjectText"]
       81 DUPCLOSURE                       R11 K31 [PROTO_16]
       82 SETTABLEKS                       R11 R6 K32 ["destroy"]
       84 DUPCLOSURE                       R11 K33 [PROTO_17]
       85 SETTABLEKS                       R11 R6 K34 ["updateLocaleAndTranslator"]
       87 DUPTABLE                         R11 K37 [{"RoundToClosest", "Truncate"}]
       88 LOADK                            R12 K35 ["RoundToClosest"]
       89 SETTABLEKS                       R12 R11 K35 ["RoundToClosest"]
       91 LOADK                            R12 K36 ["Truncate"]
       92 SETTABLEKS                       R12 R11 K36 ["Truncate"]
       94 NEWTABLE                         R12 0 0
       96 NEWTABLE                         R13 4 0
       98 LOADK                            R14 K38 ["."]
       99 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      101 LOADK                            R14 K40 [","]
      102 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      104 NEWTABLE                         R14 0 4
      106 NEWTABLE                         R15 0 2
      108 LOADN                            R16 1
      109 LOADK                            R17 K42 [""]
      110 SETLIST                          R15 R16 2 [1]
      112 NEWTABLE                         R16 0 2
      114 LOADN                            R17 232
      115 LOADK                            R18 K43 ["K"]
      116 SETLIST                          R16 R17 2 [1]
      118 NEWTABLE                         R17 0 2
      120 LOADK                            R18 K44 [1000000]
      121 LOADK                            R19 K45 ["M"]
      122 SETLIST                          R17 R18 2 [1]
      124 NEWTABLE                         R18 0 2
      126 LOADK                            R19 K46 [1000000000]
      127 LOADK                            R20 K47 ["B"]
      128 SETLIST                          R18 R19 2 [1]
      130 SETLIST                          R14 R15 4 [1]
      132 SETTABLEKS                       R14 R13 K48 ["entries"]
      134 SETTABLEKS                       R13 R12 K49 ["en-us"]
      136 NEWTABLE                         R13 4 0
      138 LOADK                            R14 K40 [","]
      139 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      141 LOADK                            R14 K38 ["."]
      142 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      144 NEWTABLE                         R14 0 3
      146 NEWTABLE                         R15 0 2
      148 LOADN                            R16 1
      149 LOADK                            R17 K42 [""]
      150 SETLIST                          R15 R16 2 [1]
      152 NEWTABLE                         R16 0 2
      154 LOADN                            R17 232
      155 LOADK                            R18 K50 [" mil"]
      156 SETLIST                          R16 R17 2 [1]
      158 NEWTABLE                         R17 0 2
      160 LOADK                            R18 K44 [1000000]
      161 LOADK                            R19 K51 [" M"]
      162 SETLIST                          R17 R18 2 [1]
      164 SETLIST                          R14 R15 3 [1]
      166 SETTABLEKS                       R14 R13 K48 ["entries"]
      168 SETTABLEKS                       R13 R12 K52 ["es-es"]
      170 NEWTABLE                         R13 4 0
      172 LOADK                            R14 K40 [","]
      173 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      175 LOADK                            R14 K53 [" "]
      176 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      178 NEWTABLE                         R14 0 4
      180 NEWTABLE                         R15 0 2
      182 LOADN                            R16 1
      183 LOADK                            R17 K42 [""]
      184 SETLIST                          R15 R16 2 [1]
      186 NEWTABLE                         R16 0 2
      188 LOADN                            R17 232
      189 LOADK                            R18 K54 [" k"]
      190 SETLIST                          R16 R17 2 [1]
      192 NEWTABLE                         R17 0 2
      194 LOADK                            R18 K44 [1000000]
      195 LOADK                            R19 K51 [" M"]
      196 SETLIST                          R17 R18 2 [1]
      198 NEWTABLE                         R18 0 2
      200 LOADK                            R19 K46 [1000000000]
      201 LOADK                            R20 K55 [" Md"]
      202 SETLIST                          R18 R19 2 [1]
      204 SETLIST                          R14 R15 4 [1]
      206 SETTABLEKS                       R14 R13 K48 ["entries"]
      208 SETTABLEKS                       R13 R12 K56 ["fr-fr"]
      210 NEWTABLE                         R13 4 0
      212 LOADK                            R14 K40 [","]
      213 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      215 LOADK                            R14 K53 [" "]
      216 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      218 NEWTABLE                         R14 0 4
      220 NEWTABLE                         R15 0 2
      222 LOADN                            R16 1
      223 LOADK                            R17 K42 [""]
      224 SETLIST                          R15 R16 2 [1]
      226 NEWTABLE                         R16 0 2
      228 LOADN                            R17 232
      229 LOADK                            R18 K57 [" Tsd."]
      230 SETLIST                          R16 R17 2 [1]
      232 NEWTABLE                         R17 0 2
      234 LOADK                            R18 K44 [1000000]
      235 LOADK                            R19 K58 [" Mio."]
      236 SETLIST                          R17 R18 2 [1]
      238 NEWTABLE                         R18 0 2
      240 LOADK                            R19 K46 [1000000000]
      241 LOADK                            R20 K59 [" Mrd."]
      242 SETLIST                          R18 R19 2 [1]
      244 SETLIST                          R14 R15 4 [1]
      246 SETTABLEKS                       R14 R13 K48 ["entries"]
      248 SETTABLEKS                       R13 R12 K60 ["de-de"]
      250 NEWTABLE                         R13 4 0
      252 LOADK                            R14 K40 [","]
      253 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      255 LOADK                            R14 K38 ["."]
      256 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      258 NEWTABLE                         R14 0 4
      260 NEWTABLE                         R15 0 2
      262 LOADN                            R16 1
      263 LOADK                            R17 K42 [""]
      264 SETLIST                          R15 R16 2 [1]
      266 NEWTABLE                         R16 0 2
      268 LOADN                            R17 232
      269 LOADK                            R18 K50 [" mil"]
      270 SETLIST                          R16 R17 2 [1]
      272 NEWTABLE                         R17 0 2
      274 LOADK                            R18 K44 [1000000]
      275 LOADK                            R19 K61 [" mi"]
      276 SETLIST                          R17 R18 2 [1]
      278 NEWTABLE                         R18 0 2
      280 LOADK                            R19 K46 [1000000000]
      281 LOADK                            R20 K62 [" bi"]
      282 SETLIST                          R18 R19 2 [1]
      284 SETLIST                          R14 R15 4 [1]
      286 SETTABLEKS                       R14 R13 K48 ["entries"]
      288 SETTABLEKS                       R13 R12 K63 ["pt-br"]
      290 NEWTABLE                         R13 4 0
      292 LOADK                            R14 K38 ["."]
      293 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      295 LOADK                            R14 K40 [","]
      296 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      298 NEWTABLE                         R14 0 4
      300 NEWTABLE                         R15 0 2
      302 LOADN                            R16 1
      303 LOADK                            R17 K42 [""]
      304 SETLIST                          R15 R16 2 [1]
      306 NEWTABLE                         R16 0 2
      308 LOADN                            R17 232
      309 LOADK                            R18 K64 ["千"]
      310 SETLIST                          R16 R17 2 [1]
      312 NEWTABLE                         R17 0 2
      314 LOADN                            R18 16
      315 LOADK                            R19 K65 ["万"]
      316 SETLIST                          R17 R18 2 [1]
      318 NEWTABLE                         R18 0 2
      320 LOADK                            R19 K66 [100000000]
      321 LOADK                            R20 K67 ["亿"]
      322 SETLIST                          R18 R19 2 [1]
      324 SETLIST                          R14 R15 4 [1]
      326 SETTABLEKS                       R14 R13 K48 ["entries"]
      328 SETTABLEKS                       R13 R12 K68 ["zh-cn"]
      330 NEWTABLE                         R13 4 0
      332 LOADK                            R14 K38 ["."]
      333 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      335 LOADK                            R14 K40 [","]
      336 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      338 NEWTABLE                         R14 0 4
      340 NEWTABLE                         R15 0 2
      342 LOADN                            R16 1
      343 LOADK                            R17 K42 [""]
      344 SETLIST                          R15 R16 2 [1]
      346 NEWTABLE                         R16 0 2
      348 LOADN                            R17 232
      349 LOADK                            R18 K64 ["千"]
      350 SETLIST                          R16 R17 2 [1]
      352 NEWTABLE                         R17 0 2
      354 LOADN                            R18 16
      355 LOADK                            R19 K65 ["万"]
      356 SETLIST                          R17 R18 2 [1]
      358 NEWTABLE                         R18 0 2
      360 LOADK                            R19 K66 [100000000]
      361 LOADK                            R20 K67 ["亿"]
      362 SETLIST                          R18 R19 2 [1]
      364 SETLIST                          R14 R15 4 [1]
      366 SETTABLEKS                       R14 R13 K48 ["entries"]
      368 SETTABLEKS                       R13 R12 K69 ["zh-cjv"]
      370 NEWTABLE                         R13 4 0
      372 LOADK                            R14 K38 ["."]
      373 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      375 LOADK                            R14 K40 [","]
      376 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      378 NEWTABLE                         R14 0 4
      380 NEWTABLE                         R15 0 2
      382 LOADN                            R16 1
      383 LOADK                            R17 K42 [""]
      384 SETLIST                          R15 R16 2 [1]
      386 NEWTABLE                         R16 0 2
      388 LOADN                            R17 232
      389 LOADK                            R18 K64 ["千"]
      390 SETLIST                          R16 R17 2 [1]
      392 NEWTABLE                         R17 0 2
      394 LOADN                            R18 16
      395 LOADK                            R19 K70 ["萬"]
      396 SETLIST                          R17 R18 2 [1]
      398 NEWTABLE                         R18 0 2
      400 LOADK                            R19 K66 [100000000]
      401 LOADK                            R20 K71 ["億"]
      402 SETLIST                          R18 R19 2 [1]
      404 SETLIST                          R14 R15 4 [1]
      406 SETTABLEKS                       R14 R13 K48 ["entries"]
      408 SETTABLEKS                       R13 R12 K72 ["zh-tw"]
      410 NEWTABLE                         R13 4 0
      412 LOADK                            R14 K38 ["."]
      413 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      415 LOADK                            R14 K40 [","]
      416 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      418 NEWTABLE                         R14 0 4
      420 NEWTABLE                         R15 0 2
      422 LOADN                            R16 1
      423 LOADK                            R17 K42 [""]
      424 SETLIST                          R15 R16 2 [1]
      426 NEWTABLE                         R16 0 2
      428 LOADN                            R17 232
      429 LOADK                            R18 K73 ["천"]
      430 SETLIST                          R16 R17 2 [1]
      432 NEWTABLE                         R17 0 2
      434 LOADN                            R18 16
      435 LOADK                            R19 K74 ["만"]
      436 SETLIST                          R17 R18 2 [1]
      438 NEWTABLE                         R18 0 2
      440 LOADK                            R19 K66 [100000000]
      441 LOADK                            R20 K75 ["억"]
      442 SETLIST                          R18 R19 2 [1]
      444 SETLIST                          R14 R15 4 [1]
      446 SETTABLEKS                       R14 R13 K48 ["entries"]
      448 SETTABLEKS                       R13 R12 K76 ["ko-kr"]
      450 NEWTABLE                         R13 4 0
      452 LOADK                            R14 K38 ["."]
      453 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      455 LOADK                            R14 K40 [","]
      456 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      458 NEWTABLE                         R14 0 4
      460 NEWTABLE                         R15 0 2
      462 LOADN                            R16 1
      463 LOADK                            R17 K42 [""]
      464 SETLIST                          R15 R16 2 [1]
      466 NEWTABLE                         R16 0 2
      468 LOADN                            R17 232
      469 LOADK                            R18 K64 ["千"]
      470 SETLIST                          R16 R17 2 [1]
      472 NEWTABLE                         R17 0 2
      474 LOADN                            R18 16
      475 LOADK                            R19 K65 ["万"]
      476 SETLIST                          R17 R18 2 [1]
      478 NEWTABLE                         R18 0 2
      480 LOADK                            R19 K66 [100000000]
      481 LOADK                            R20 K71 ["億"]
      482 SETLIST                          R18 R19 2 [1]
      484 SETLIST                          R14 R15 4 [1]
      486 SETTABLEKS                       R14 R13 K48 ["entries"]
      488 SETTABLEKS                       R13 R12 K77 ["ja-jp"]
      490 NEWTABLE                         R13 4 0
      492 LOADK                            R14 K40 [","]
      493 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      495 LOADK                            R14 K53 [" "]
      496 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      498 NEWTABLE                         R14 0 4
      500 NEWTABLE                         R15 0 2
      502 LOADN                            R16 1
      503 LOADK                            R17 K42 [""]
      504 SETLIST                          R15 R16 2 [1]
      506 NEWTABLE                         R16 0 2
      508 LOADN                            R17 232
      509 LOADK                            R18 K78 [" mila"]
      510 SETLIST                          R16 R17 2 [1]
      512 NEWTABLE                         R17 0 2
      514 LOADK                            R18 K44 [1000000]
      515 LOADK                            R19 K79 [" Mln"]
      516 SETLIST                          R17 R18 2 [1]
      518 NEWTABLE                         R18 0 2
      520 LOADK                            R19 K46 [1000000000]
      521 LOADK                            R20 K80 [" Mld"]
      522 SETLIST                          R18 R19 2 [1]
      524 SETLIST                          R14 R15 4 [1]
      526 SETTABLEKS                       R14 R13 K48 ["entries"]
      528 SETTABLEKS                       R13 R12 K81 ["it-it"]
      530 NEWTABLE                         R13 4 0
      532 LOADK                            R14 K40 [","]
      533 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      535 LOADK                            R14 K38 ["."]
      536 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      538 NEWTABLE                         R14 0 4
      540 NEWTABLE                         R15 0 2
      542 LOADN                            R16 1
      543 LOADK                            R17 K42 [""]
      544 SETLIST                          R15 R16 2 [1]
      546 NEWTABLE                         R16 0 2
      548 LOADN                            R17 232
      549 LOADK                            R18 K82 [" тыс"]
      550 SETLIST                          R16 R17 2 [1]
      552 NEWTABLE                         R17 0 2
      554 LOADK                            R18 K44 [1000000]
      555 LOADK                            R19 K83 [" млн"]
      556 SETLIST                          R17 R18 2 [1]
      558 NEWTABLE                         R18 0 2
      560 LOADK                            R19 K46 [1000000000]
      561 LOADK                            R20 K84 [" млрд"]
      562 SETLIST                          R18 R19 2 [1]
      564 SETLIST                          R14 R15 4 [1]
      566 SETTABLEKS                       R14 R13 K48 ["entries"]
      568 SETTABLEKS                       R13 R12 K85 ["ru-ru"]
      570 NEWTABLE                         R13 4 0
      572 LOADK                            R14 K40 [","]
      573 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      575 LOADK                            R14 K38 ["."]
      576 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      578 NEWTABLE                         R14 0 4
      580 NEWTABLE                         R15 0 2
      582 LOADN                            R16 1
      583 LOADK                            R17 K42 [""]
      584 SETLIST                          R15 R16 2 [1]
      586 NEWTABLE                         R16 0 2
      588 LOADN                            R17 232
      589 LOADK                            R18 K86 [" rb"]
      590 SETLIST                          R16 R17 2 [1]
      592 NEWTABLE                         R17 0 2
      594 LOADK                            R18 K44 [1000000]
      595 LOADK                            R19 K87 [" jt"]
      596 SETLIST                          R17 R18 2 [1]
      598 NEWTABLE                         R18 0 2
      600 LOADK                            R19 K46 [1000000000]
      601 LOADK                            R20 K51 [" M"]
      602 SETLIST                          R18 R19 2 [1]
      604 SETLIST                          R14 R15 4 [1]
      606 SETTABLEKS                       R14 R13 K48 ["entries"]
      608 SETTABLEKS                       R13 R12 K88 ["id-id"]
      610 NEWTABLE                         R13 4 0
      612 LOADK                            R14 K38 ["."]
      613 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      615 LOADK                            R14 K53 [" "]
      616 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      618 NEWTABLE                         R14 0 4
      620 NEWTABLE                         R15 0 2
      622 LOADN                            R16 1
      623 LOADK                            R17 K42 [""]
      624 SETLIST                          R15 R16 2 [1]
      626 NEWTABLE                         R16 0 2
      628 LOADN                            R17 232
      629 LOADK                            R18 K89 [" N"]
      630 SETLIST                          R16 R17 2 [1]
      632 NEWTABLE                         R17 0 2
      634 LOADK                            R18 K44 [1000000]
      635 LOADK                            R19 K90 [" Tr"]
      636 SETLIST                          R17 R18 2 [1]
      638 NEWTABLE                         R18 0 2
      640 LOADK                            R19 K46 [1000000000]
      641 LOADK                            R20 K91 [" T"]
      642 SETLIST                          R18 R19 2 [1]
      644 SETLIST                          R14 R15 4 [1]
      646 SETTABLEKS                       R14 R13 K48 ["entries"]
      648 SETTABLEKS                       R13 R12 K92 ["vi-vn"]
      650 NEWTABLE                         R13 4 0
      652 LOADK                            R14 K38 ["."]
      653 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      655 LOADK                            R14 K40 [","]
      656 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      658 NEWTABLE                         R14 0 5
      660 NEWTABLE                         R15 0 2
      662 LOADN                            R16 1
      663 LOADK                            R17 K42 [""]
      664 SETLIST                          R15 R16 2 [1]
      666 NEWTABLE                         R16 0 2
      668 LOADN                            R17 232
      669 LOADK                            R18 K93 [" พ"]
      670 SETLIST                          R16 R17 2 [1]
      672 NEWTABLE                         R17 0 2
      674 LOADN                            R18 16
      675 LOADK                            R19 K94 [" ม"]
      676 SETLIST                          R17 R18 2 [1]
      678 NEWTABLE                         R18 0 2
      680 LOADK                            R19 K95 [100000]
      681 LOADK                            R20 K96 [" ส"]
      682 SETLIST                          R18 R19 2 [1]
      684 NEWTABLE                         R19 0 2
      686 LOADK                            R20 K44 [1000000]
      687 LOADK                            R21 K97 [" ล"]
      688 SETLIST                          R19 R20 2 [1]
      690 SETLIST                          R14 R15 5 [1]
      692 SETTABLEKS                       R14 R13 K48 ["entries"]
      694 SETTABLEKS                       R13 R12 K98 ["th-th"]
      696 NEWTABLE                         R13 4 0
      698 LOADK                            R14 K40 [","]
      699 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      701 LOADK                            R14 K38 ["."]
      702 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      704 NEWTABLE                         R14 0 4
      706 NEWTABLE                         R15 0 2
      708 LOADN                            R16 1
      709 LOADK                            R17 K42 [""]
      710 SETLIST                          R15 R16 2 [1]
      712 NEWTABLE                         R16 0 2
      714 LOADN                            R17 232
      715 LOADK                            R18 K99 [" B"]
      716 SETLIST                          R16 R17 2 [1]
      718 NEWTABLE                         R17 0 2
      720 LOADK                            R18 K44 [1000000]
      721 LOADK                            R19 K100 [" Mn"]
      722 SETLIST                          R17 R18 2 [1]
      724 NEWTABLE                         R18 0 2
      726 LOADK                            R19 K46 [1000000000]
      727 LOADK                            R20 K101 [" Mr"]
      728 SETLIST                          R18 R19 2 [1]
      730 SETLIST                          R14 R15 4 [1]
      732 SETTABLEKS                       R14 R13 K48 ["entries"]
      734 SETTABLEKS                       R13 R12 K102 ["tr-tr"]
      736 GETTABLEKS                       R13 R12 K49 ["en-us"]
      738 SETTABLEKS                       R13 R12 K103 ["en-gb"]
      740 GETTABLEKS                       R13 R12 K52 ["es-es"]
      742 SETTABLEKS                       R13 R12 K104 ["es-mx"]
      744 DUPCLOSURE                       R13 K105 [PROTO_18]
      745 DUPCLOSURE                       R14 K106 [PROTO_19]
      746 DUPCLOSURE                       R15 K107 [PROTO_20]
      747 CAPTURE                          VAL R11
      748 DUPCLOSURE                       R16 K108 [PROTO_21]
      749 DUPCLOSURE                       R17 K109 [PROTO_22]
      750 CAPTURE                          VAL R11
      751 DUPCLOSURE                       R18 K110 [PROTO_23]
      752 CAPTURE                          VAL R12
      753 CAPTURE                          VAL R16
      754 SETTABLEKS                       R18 R6 K111 ["localizeNumber"]
      756 DUPCLOSURE                       R18 K112 [PROTO_24]
      757 CAPTURE                          VAL R11
      758 CAPTURE                          VAL R12
      759 CAPTURE                          VAL R17
      760 CAPTURE                          VAL R16
      761 SETTABLEKS                       R18 R6 K113 ["localizeAndAbbreviateNumber"]
      763 DUPCLOSURE                       R18 K114 [PROTO_28]
      764 CAPTURE                          VAL R6
      765 CAPTURE                          VAL R4
      766 CAPTURE                          VAL R5
      767 SETTABLEKS                       R18 R6 K115 ["mock"]
      769 CLOSEUPVALS                      R7
      770 RETURN                           R6 1
