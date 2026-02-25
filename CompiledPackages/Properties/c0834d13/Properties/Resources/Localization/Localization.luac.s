PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioService is not available in this environment"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["StudioLocaleId"]
       10 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
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

PROTO_3:
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

PROTO_5:
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
       14 DUPCLOSURE                       R2 K2 [PROTO_1]
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
       42 DUPCLOSURE                       R2 K2 [PROTO_1]
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLocaleAndTranslator"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["localeChanged"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["localeChanged"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R6 R0 K0 ["keyPluginName"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R0 K1 ["getProjectText"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_12:
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

PROTO_13:
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
      154 GETIMPORT                        R11 K24 [game]
      156 LOADK                            R13 K25 ["RefactorTranslatorInstance"]
      157 NAMECALL                         R11 R11 K26 ["GetEngineFeature"]
      159 CALL                             R11 2 1
      160 JUMPIFNOT                        R11 ; [+19]
      161 GETTABLEKS                       R11 R0 K27 ["keyPluginName"]
      163 JUMPIFEQKS                       R11 K28 ["Test"] ; [+34]
      165 JUMPIF                           R9 ; [+32]
      166 GETIMPORT                        R11 K30 [string.find]
      168 MOVE                             R12 R10
      169 LOADK                            R13 K31 ["Key .* not found for locale"]
      170 CALL                             R11 2 1
      171 JUMPIF                           R11 ; [+26]
      172 GETIMPORT                        R11 K33 [warn]
      174 MOVE                             R12 R10
      175 GETIMPORT                        R13 K36 [debug.traceback]
      177 CALL                             R13 0 -1
      178 CALL                             R11 -1 0
      179 RETURN                           R5 1
      180 GETTABLEKS                       R11 R0 K27 ["keyPluginName"]
      182 JUMPIFEQKS                       R11 K28 ["Test"] ; [+15]
      184 JUMPIF                           R9 ; [+13]
      185 GETIMPORT                        R11 K30 [string.find]
      187 MOVE                             R12 R10
      188 LOADK                            R13 K37 ["LocalizationTable or parent tables do not contain a translation"]
      189 CALL                             R11 2 1
      190 JUMPIF                           R11 ; [+7]
      191 GETIMPORT                        R11 K33 [warn]
      193 MOVE                             R12 R10
      194 GETIMPORT                        R13 K36 [debug.traceback]
      196 CALL                             R13 0 -1
      197 CALL                             R11 -1 0
      198 RETURN                           R5 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%."]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LENGTH                           R2 R0
        7 ADDK                             R1 R2 K4 [1]
        8 RETURN                           R1 1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 DUPTABLE                         R0 K1 [{"FormatByKey"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_23]
        2 SETTABLEKS                       R1 R0 K0 ["FormatByKey"]
        4 RETURN                           R0 1

PROTO_25:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_26:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"GetTranslator"}]
        6 DUPCLOSURE                       R2 K2 [PROTO_24]
        7 SETTABLEKS                       R2 R1 K0 ["GetTranslator"]
        9 GETTABLEKS                       R2 R0 K3 ["getLocale"]
       11 JUMPIF                           R2 ; [+1]
       12 DUPCLOSURE                       R2 K4 [PROTO_25]
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
       13 LOADK                            R5 K9 ["Properties"]
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
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 DUPCLOSURE                       R9 K20 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R10 P3
       58 CAPTURE                          VAL R9
       59 CAPTURE                          REF R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R10 R6 K21 ["new"]
       68 DUPCLOSURE                       R10 K22 [PROTO_8]
       69 SETTABLEKS                       R10 R6 K23 ["getSignal"]
       71 DUPCLOSURE                       R10 K24 [PROTO_9]
       72 SETTABLEKS                       R10 R6 K25 ["getConsumerItem"]
       74 DUPCLOSURE                       R10 K26 [PROTO_10]
       75 SETTABLEKS                       R10 R6 K27 ["getText"]
       77 DUPCLOSURE                       R10 K28 [PROTO_13]
       78 SETTABLEKS                       R10 R6 K29 ["getProjectText"]
       80 DUPCLOSURE                       R10 K30 [PROTO_14]
       81 SETTABLEKS                       R10 R6 K31 ["destroy"]
       83 DUPCLOSURE                       R10 K32 [PROTO_15]
       84 SETTABLEKS                       R10 R6 K33 ["updateLocaleAndTranslator"]
       86 DUPTABLE                         R10 K36 [{"RoundToClosest", "Truncate"}]
       87 LOADK                            R11 K34 ["RoundToClosest"]
       88 SETTABLEKS                       R11 R10 K34 ["RoundToClosest"]
       90 LOADK                            R11 K35 ["Truncate"]
       91 SETTABLEKS                       R11 R10 K35 ["Truncate"]
       93 NEWTABLE                         R11 0 0
       95 NEWTABLE                         R12 4 0
       97 LOADK                            R13 K37 ["."]
       98 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      100 LOADK                            R13 K39 [","]
      101 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      103 NEWTABLE                         R13 0 4
      105 NEWTABLE                         R14 0 2
      107 LOADN                            R15 1
      108 LOADK                            R16 K41 [""]
      109 SETLIST                          R14 R15 2 [1]
      111 NEWTABLE                         R15 0 2
      113 LOADN                            R16 232
      114 LOADK                            R17 K42 ["K"]
      115 SETLIST                          R15 R16 2 [1]
      117 NEWTABLE                         R16 0 2
      119 LOADK                            R17 K43 [1000000]
      120 LOADK                            R18 K44 ["M"]
      121 SETLIST                          R16 R17 2 [1]
      123 NEWTABLE                         R17 0 2
      125 LOADK                            R18 K45 [1000000000]
      126 LOADK                            R19 K46 ["B"]
      127 SETLIST                          R17 R18 2 [1]
      129 SETLIST                          R13 R14 4 [1]
      131 SETTABLEKS                       R13 R12 K47 ["entries"]
      133 SETTABLEKS                       R12 R11 K48 ["en-us"]
      135 NEWTABLE                         R12 4 0
      137 LOADK                            R13 K39 [","]
      138 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      140 LOADK                            R13 K37 ["."]
      141 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      143 NEWTABLE                         R13 0 3
      145 NEWTABLE                         R14 0 2
      147 LOADN                            R15 1
      148 LOADK                            R16 K41 [""]
      149 SETLIST                          R14 R15 2 [1]
      151 NEWTABLE                         R15 0 2
      153 LOADN                            R16 232
      154 LOADK                            R17 K49 [" mil"]
      155 SETLIST                          R15 R16 2 [1]
      157 NEWTABLE                         R16 0 2
      159 LOADK                            R17 K43 [1000000]
      160 LOADK                            R18 K50 [" M"]
      161 SETLIST                          R16 R17 2 [1]
      163 SETLIST                          R13 R14 3 [1]
      165 SETTABLEKS                       R13 R12 K47 ["entries"]
      167 SETTABLEKS                       R12 R11 K51 ["es-es"]
      169 NEWTABLE                         R12 4 0
      171 LOADK                            R13 K39 [","]
      172 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      174 LOADK                            R13 K52 [" "]
      175 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      177 NEWTABLE                         R13 0 4
      179 NEWTABLE                         R14 0 2
      181 LOADN                            R15 1
      182 LOADK                            R16 K41 [""]
      183 SETLIST                          R14 R15 2 [1]
      185 NEWTABLE                         R15 0 2
      187 LOADN                            R16 232
      188 LOADK                            R17 K53 [" k"]
      189 SETLIST                          R15 R16 2 [1]
      191 NEWTABLE                         R16 0 2
      193 LOADK                            R17 K43 [1000000]
      194 LOADK                            R18 K50 [" M"]
      195 SETLIST                          R16 R17 2 [1]
      197 NEWTABLE                         R17 0 2
      199 LOADK                            R18 K45 [1000000000]
      200 LOADK                            R19 K54 [" Md"]
      201 SETLIST                          R17 R18 2 [1]
      203 SETLIST                          R13 R14 4 [1]
      205 SETTABLEKS                       R13 R12 K47 ["entries"]
      207 SETTABLEKS                       R12 R11 K55 ["fr-fr"]
      209 NEWTABLE                         R12 4 0
      211 LOADK                            R13 K39 [","]
      212 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      214 LOADK                            R13 K52 [" "]
      215 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      217 NEWTABLE                         R13 0 4
      219 NEWTABLE                         R14 0 2
      221 LOADN                            R15 1
      222 LOADK                            R16 K41 [""]
      223 SETLIST                          R14 R15 2 [1]
      225 NEWTABLE                         R15 0 2
      227 LOADN                            R16 232
      228 LOADK                            R17 K56 [" Tsd."]
      229 SETLIST                          R15 R16 2 [1]
      231 NEWTABLE                         R16 0 2
      233 LOADK                            R17 K43 [1000000]
      234 LOADK                            R18 K57 [" Mio."]
      235 SETLIST                          R16 R17 2 [1]
      237 NEWTABLE                         R17 0 2
      239 LOADK                            R18 K45 [1000000000]
      240 LOADK                            R19 K58 [" Mrd."]
      241 SETLIST                          R17 R18 2 [1]
      243 SETLIST                          R13 R14 4 [1]
      245 SETTABLEKS                       R13 R12 K47 ["entries"]
      247 SETTABLEKS                       R12 R11 K59 ["de-de"]
      249 NEWTABLE                         R12 4 0
      251 LOADK                            R13 K39 [","]
      252 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      254 LOADK                            R13 K37 ["."]
      255 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      257 NEWTABLE                         R13 0 4
      259 NEWTABLE                         R14 0 2
      261 LOADN                            R15 1
      262 LOADK                            R16 K41 [""]
      263 SETLIST                          R14 R15 2 [1]
      265 NEWTABLE                         R15 0 2
      267 LOADN                            R16 232
      268 LOADK                            R17 K49 [" mil"]
      269 SETLIST                          R15 R16 2 [1]
      271 NEWTABLE                         R16 0 2
      273 LOADK                            R17 K43 [1000000]
      274 LOADK                            R18 K60 [" mi"]
      275 SETLIST                          R16 R17 2 [1]
      277 NEWTABLE                         R17 0 2
      279 LOADK                            R18 K45 [1000000000]
      280 LOADK                            R19 K61 [" bi"]
      281 SETLIST                          R17 R18 2 [1]
      283 SETLIST                          R13 R14 4 [1]
      285 SETTABLEKS                       R13 R12 K47 ["entries"]
      287 SETTABLEKS                       R12 R11 K62 ["pt-br"]
      289 NEWTABLE                         R12 4 0
      291 LOADK                            R13 K37 ["."]
      292 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      294 LOADK                            R13 K39 [","]
      295 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      297 NEWTABLE                         R13 0 4
      299 NEWTABLE                         R14 0 2
      301 LOADN                            R15 1
      302 LOADK                            R16 K41 [""]
      303 SETLIST                          R14 R15 2 [1]
      305 NEWTABLE                         R15 0 2
      307 LOADN                            R16 232
      308 LOADK                            R17 K63 ["千"]
      309 SETLIST                          R15 R16 2 [1]
      311 NEWTABLE                         R16 0 2
      313 LOADN                            R17 16
      314 LOADK                            R18 K64 ["万"]
      315 SETLIST                          R16 R17 2 [1]
      317 NEWTABLE                         R17 0 2
      319 LOADK                            R18 K65 [100000000]
      320 LOADK                            R19 K66 ["亿"]
      321 SETLIST                          R17 R18 2 [1]
      323 SETLIST                          R13 R14 4 [1]
      325 SETTABLEKS                       R13 R12 K47 ["entries"]
      327 SETTABLEKS                       R12 R11 K67 ["zh-cn"]
      329 NEWTABLE                         R12 4 0
      331 LOADK                            R13 K37 ["."]
      332 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      334 LOADK                            R13 K39 [","]
      335 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      337 NEWTABLE                         R13 0 4
      339 NEWTABLE                         R14 0 2
      341 LOADN                            R15 1
      342 LOADK                            R16 K41 [""]
      343 SETLIST                          R14 R15 2 [1]
      345 NEWTABLE                         R15 0 2
      347 LOADN                            R16 232
      348 LOADK                            R17 K63 ["千"]
      349 SETLIST                          R15 R16 2 [1]
      351 NEWTABLE                         R16 0 2
      353 LOADN                            R17 16
      354 LOADK                            R18 K64 ["万"]
      355 SETLIST                          R16 R17 2 [1]
      357 NEWTABLE                         R17 0 2
      359 LOADK                            R18 K65 [100000000]
      360 LOADK                            R19 K66 ["亿"]
      361 SETLIST                          R17 R18 2 [1]
      363 SETLIST                          R13 R14 4 [1]
      365 SETTABLEKS                       R13 R12 K47 ["entries"]
      367 SETTABLEKS                       R12 R11 K68 ["zh-cjv"]
      369 NEWTABLE                         R12 4 0
      371 LOADK                            R13 K37 ["."]
      372 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      374 LOADK                            R13 K39 [","]
      375 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      377 NEWTABLE                         R13 0 4
      379 NEWTABLE                         R14 0 2
      381 LOADN                            R15 1
      382 LOADK                            R16 K41 [""]
      383 SETLIST                          R14 R15 2 [1]
      385 NEWTABLE                         R15 0 2
      387 LOADN                            R16 232
      388 LOADK                            R17 K63 ["千"]
      389 SETLIST                          R15 R16 2 [1]
      391 NEWTABLE                         R16 0 2
      393 LOADN                            R17 16
      394 LOADK                            R18 K69 ["萬"]
      395 SETLIST                          R16 R17 2 [1]
      397 NEWTABLE                         R17 0 2
      399 LOADK                            R18 K65 [100000000]
      400 LOADK                            R19 K70 ["億"]
      401 SETLIST                          R17 R18 2 [1]
      403 SETLIST                          R13 R14 4 [1]
      405 SETTABLEKS                       R13 R12 K47 ["entries"]
      407 SETTABLEKS                       R12 R11 K71 ["zh-tw"]
      409 NEWTABLE                         R12 4 0
      411 LOADK                            R13 K37 ["."]
      412 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      414 LOADK                            R13 K39 [","]
      415 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      417 NEWTABLE                         R13 0 4
      419 NEWTABLE                         R14 0 2
      421 LOADN                            R15 1
      422 LOADK                            R16 K41 [""]
      423 SETLIST                          R14 R15 2 [1]
      425 NEWTABLE                         R15 0 2
      427 LOADN                            R16 232
      428 LOADK                            R17 K72 ["천"]
      429 SETLIST                          R15 R16 2 [1]
      431 NEWTABLE                         R16 0 2
      433 LOADN                            R17 16
      434 LOADK                            R18 K73 ["만"]
      435 SETLIST                          R16 R17 2 [1]
      437 NEWTABLE                         R17 0 2
      439 LOADK                            R18 K65 [100000000]
      440 LOADK                            R19 K74 ["억"]
      441 SETLIST                          R17 R18 2 [1]
      443 SETLIST                          R13 R14 4 [1]
      445 SETTABLEKS                       R13 R12 K47 ["entries"]
      447 SETTABLEKS                       R12 R11 K75 ["ko-kr"]
      449 NEWTABLE                         R12 4 0
      451 LOADK                            R13 K37 ["."]
      452 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      454 LOADK                            R13 K39 [","]
      455 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      457 NEWTABLE                         R13 0 4
      459 NEWTABLE                         R14 0 2
      461 LOADN                            R15 1
      462 LOADK                            R16 K41 [""]
      463 SETLIST                          R14 R15 2 [1]
      465 NEWTABLE                         R15 0 2
      467 LOADN                            R16 232
      468 LOADK                            R17 K63 ["千"]
      469 SETLIST                          R15 R16 2 [1]
      471 NEWTABLE                         R16 0 2
      473 LOADN                            R17 16
      474 LOADK                            R18 K64 ["万"]
      475 SETLIST                          R16 R17 2 [1]
      477 NEWTABLE                         R17 0 2
      479 LOADK                            R18 K65 [100000000]
      480 LOADK                            R19 K70 ["億"]
      481 SETLIST                          R17 R18 2 [1]
      483 SETLIST                          R13 R14 4 [1]
      485 SETTABLEKS                       R13 R12 K47 ["entries"]
      487 SETTABLEKS                       R12 R11 K76 ["ja-jp"]
      489 NEWTABLE                         R12 4 0
      491 LOADK                            R13 K39 [","]
      492 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      494 LOADK                            R13 K52 [" "]
      495 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      497 NEWTABLE                         R13 0 4
      499 NEWTABLE                         R14 0 2
      501 LOADN                            R15 1
      502 LOADK                            R16 K41 [""]
      503 SETLIST                          R14 R15 2 [1]
      505 NEWTABLE                         R15 0 2
      507 LOADN                            R16 232
      508 LOADK                            R17 K77 [" mila"]
      509 SETLIST                          R15 R16 2 [1]
      511 NEWTABLE                         R16 0 2
      513 LOADK                            R17 K43 [1000000]
      514 LOADK                            R18 K78 [" Mln"]
      515 SETLIST                          R16 R17 2 [1]
      517 NEWTABLE                         R17 0 2
      519 LOADK                            R18 K45 [1000000000]
      520 LOADK                            R19 K79 [" Mld"]
      521 SETLIST                          R17 R18 2 [1]
      523 SETLIST                          R13 R14 4 [1]
      525 SETTABLEKS                       R13 R12 K47 ["entries"]
      527 SETTABLEKS                       R12 R11 K80 ["it-it"]
      529 NEWTABLE                         R12 4 0
      531 LOADK                            R13 K39 [","]
      532 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      534 LOADK                            R13 K37 ["."]
      535 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      537 NEWTABLE                         R13 0 4
      539 NEWTABLE                         R14 0 2
      541 LOADN                            R15 1
      542 LOADK                            R16 K41 [""]
      543 SETLIST                          R14 R15 2 [1]
      545 NEWTABLE                         R15 0 2
      547 LOADN                            R16 232
      548 LOADK                            R17 K81 [" тыс"]
      549 SETLIST                          R15 R16 2 [1]
      551 NEWTABLE                         R16 0 2
      553 LOADK                            R17 K43 [1000000]
      554 LOADK                            R18 K82 [" млн"]
      555 SETLIST                          R16 R17 2 [1]
      557 NEWTABLE                         R17 0 2
      559 LOADK                            R18 K45 [1000000000]
      560 LOADK                            R19 K83 [" млрд"]
      561 SETLIST                          R17 R18 2 [1]
      563 SETLIST                          R13 R14 4 [1]
      565 SETTABLEKS                       R13 R12 K47 ["entries"]
      567 SETTABLEKS                       R12 R11 K84 ["ru-ru"]
      569 NEWTABLE                         R12 4 0
      571 LOADK                            R13 K39 [","]
      572 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      574 LOADK                            R13 K37 ["."]
      575 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      577 NEWTABLE                         R13 0 4
      579 NEWTABLE                         R14 0 2
      581 LOADN                            R15 1
      582 LOADK                            R16 K41 [""]
      583 SETLIST                          R14 R15 2 [1]
      585 NEWTABLE                         R15 0 2
      587 LOADN                            R16 232
      588 LOADK                            R17 K85 [" rb"]
      589 SETLIST                          R15 R16 2 [1]
      591 NEWTABLE                         R16 0 2
      593 LOADK                            R17 K43 [1000000]
      594 LOADK                            R18 K86 [" jt"]
      595 SETLIST                          R16 R17 2 [1]
      597 NEWTABLE                         R17 0 2
      599 LOADK                            R18 K45 [1000000000]
      600 LOADK                            R19 K50 [" M"]
      601 SETLIST                          R17 R18 2 [1]
      603 SETLIST                          R13 R14 4 [1]
      605 SETTABLEKS                       R13 R12 K47 ["entries"]
      607 SETTABLEKS                       R12 R11 K87 ["id-id"]
      609 NEWTABLE                         R12 4 0
      611 LOADK                            R13 K37 ["."]
      612 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      614 LOADK                            R13 K52 [" "]
      615 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      617 NEWTABLE                         R13 0 4
      619 NEWTABLE                         R14 0 2
      621 LOADN                            R15 1
      622 LOADK                            R16 K41 [""]
      623 SETLIST                          R14 R15 2 [1]
      625 NEWTABLE                         R15 0 2
      627 LOADN                            R16 232
      628 LOADK                            R17 K88 [" N"]
      629 SETLIST                          R15 R16 2 [1]
      631 NEWTABLE                         R16 0 2
      633 LOADK                            R17 K43 [1000000]
      634 LOADK                            R18 K89 [" Tr"]
      635 SETLIST                          R16 R17 2 [1]
      637 NEWTABLE                         R17 0 2
      639 LOADK                            R18 K45 [1000000000]
      640 LOADK                            R19 K90 [" T"]
      641 SETLIST                          R17 R18 2 [1]
      643 SETLIST                          R13 R14 4 [1]
      645 SETTABLEKS                       R13 R12 K47 ["entries"]
      647 SETTABLEKS                       R12 R11 K91 ["vi-vn"]
      649 NEWTABLE                         R12 4 0
      651 LOADK                            R13 K37 ["."]
      652 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      654 LOADK                            R13 K39 [","]
      655 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      657 NEWTABLE                         R13 0 5
      659 NEWTABLE                         R14 0 2
      661 LOADN                            R15 1
      662 LOADK                            R16 K41 [""]
      663 SETLIST                          R14 R15 2 [1]
      665 NEWTABLE                         R15 0 2
      667 LOADN                            R16 232
      668 LOADK                            R17 K92 [" พ"]
      669 SETLIST                          R15 R16 2 [1]
      671 NEWTABLE                         R16 0 2
      673 LOADN                            R17 16
      674 LOADK                            R18 K93 [" ม"]
      675 SETLIST                          R16 R17 2 [1]
      677 NEWTABLE                         R17 0 2
      679 LOADK                            R18 K94 [100000]
      680 LOADK                            R19 K95 [" ส"]
      681 SETLIST                          R17 R18 2 [1]
      683 NEWTABLE                         R18 0 2
      685 LOADK                            R19 K43 [1000000]
      686 LOADK                            R20 K96 [" ล"]
      687 SETLIST                          R18 R19 2 [1]
      689 SETLIST                          R13 R14 5 [1]
      691 SETTABLEKS                       R13 R12 K47 ["entries"]
      693 SETTABLEKS                       R12 R11 K97 ["th-th"]
      695 NEWTABLE                         R12 4 0
      697 LOADK                            R13 K39 [","]
      698 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      700 LOADK                            R13 K37 ["."]
      701 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      703 NEWTABLE                         R13 0 4
      705 NEWTABLE                         R14 0 2
      707 LOADN                            R15 1
      708 LOADK                            R16 K41 [""]
      709 SETLIST                          R14 R15 2 [1]
      711 NEWTABLE                         R15 0 2
      713 LOADN                            R16 232
      714 LOADK                            R17 K98 [" B"]
      715 SETLIST                          R15 R16 2 [1]
      717 NEWTABLE                         R16 0 2
      719 LOADK                            R17 K43 [1000000]
      720 LOADK                            R18 K99 [" Mn"]
      721 SETLIST                          R16 R17 2 [1]
      723 NEWTABLE                         R17 0 2
      725 LOADK                            R18 K45 [1000000000]
      726 LOADK                            R19 K100 [" Mr"]
      727 SETLIST                          R17 R18 2 [1]
      729 SETLIST                          R13 R14 4 [1]
      731 SETTABLEKS                       R13 R12 K47 ["entries"]
      733 SETTABLEKS                       R12 R11 K101 ["tr-tr"]
      735 GETTABLEKS                       R12 R11 K48 ["en-us"]
      737 SETTABLEKS                       R12 R11 K102 ["en-gb"]
      739 GETTABLEKS                       R12 R11 K51 ["es-es"]
      741 SETTABLEKS                       R12 R11 K103 ["es-mx"]
      743 DUPCLOSURE                       R12 K104 [PROTO_16]
      744 DUPCLOSURE                       R13 K105 [PROTO_17]
      745 DUPCLOSURE                       R14 K106 [PROTO_18]
      746 CAPTURE                          VAL R10
      747 DUPCLOSURE                       R15 K107 [PROTO_19]
      748 DUPCLOSURE                       R16 K108 [PROTO_20]
      749 CAPTURE                          VAL R10
      750 DUPCLOSURE                       R17 K109 [PROTO_21]
      751 CAPTURE                          VAL R11
      752 CAPTURE                          VAL R15
      753 SETTABLEKS                       R17 R6 K110 ["localizeNumber"]
      755 DUPCLOSURE                       R17 K111 [PROTO_22]
      756 CAPTURE                          VAL R10
      757 CAPTURE                          VAL R11
      758 CAPTURE                          VAL R16
      759 CAPTURE                          VAL R15
      760 SETTABLEKS                       R17 R6 K112 ["localizeAndAbbreviateNumber"]
      762 DUPCLOSURE                       R17 K113 [PROTO_26]
      763 CAPTURE                          VAL R6
      764 CAPTURE                          VAL R4
      765 CAPTURE                          VAL R5
      766 SETTABLEKS                       R17 R6 K114 ["mock"]
      768 CLOSEUPVALS                      R7
      769 RETURN                           R6 1
