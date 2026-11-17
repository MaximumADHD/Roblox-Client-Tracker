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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 JUMPIF                           R3 ; [+1]
        9 LOADB                            R3 0
       10 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioService is not available in this environment"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["StudioLocaleId"]
       10 RETURN                           R0 1

PROTO_4:
        0 DUPCLOSURE                       R1 K0 [PROTO_3]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K2 [pcall]
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["LocalPlayer"]
       12 JUMPIF                           R2 ; [+2]
       13 LOADK                            R3 K4 ["en-us"]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R2 K5 ["LocaleId"]
       17 RETURN                           R3 1

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
        0 DUPCLOSURE                       R1 K0 [PROTO_5]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K2 [pcall]
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["LocalPlayer"]
       12 JUMPIF                           R2 ; [+7]
       13 GETIMPORT                        R3 K6 [Instance.new]
       15 LOADK                            R4 K7 ["BindableEvent"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K8 ["Event"]
       19 RETURN                           R3 1
       20 LOADK                            R5 K9 ["LocaleId"]
       21 NAMECALL                         R3 R2 K10 ["GetPropertyChangedSignal"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

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
       11 JUMPIFNOT                        R0 ; [+29]
       12 DUPCLOSURE                       R2 K0 [PROTO_3]
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R1 K2 [pcall]
       18 CALL                             R1 1 2
       19 JUMPIFNOT                        R1 ; [+2]
       20 MOVE                             R0 R2
       21 JUMP                             ; [+8]
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R3 R3 K3 ["LocalPlayer"]
       25 JUMPIF                           R3 ; [+2]
       26 LOADK                            R0 K4 ["en-us"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       30 GETIMPORT                        R1 K8 [string.gsub]
       32 GETIMPORT                        R2 K10 [string.lower]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 1
       36 LOADK                            R3 K11 ["_"]
       37 LOADK                            R4 K12 ["-"]
       38 CALL                             R1 3 1
       39 MOVE                             R0 R1
       40 RETURN                           R0 1
       41 DUPCLOSURE                       R2 K0 [PROTO_3]
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 FASTPCALL                        pcall 1 ; [+2]
       45 GETIMPORT                        R1 K2 [pcall]
       47 CALL                             R1 1 2
       48 JUMPIFNOT                        R1 ; [+2]
       49 MOVE                             R0 R2
       50 RETURN                           R0 1
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K3 ["LocalPlayer"]
       54 JUMPIF                           R3 ; [+2]
       55 LOADK                            R0 K4 ["en-us"]
       56 RETURN                           R0 1
       57 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       59 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLocaleAndTranslator"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["localeChanged"]
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
      174 DUPTABLE                         R10 K36 [{["localeChanged"], ["externalLocaleChanged"], ["externalLocaleChangedConnection"] = , ["locale"] = "en-us", ["keyNamespace"], ["keyPluginName"], ["getLocale"]}]
      175 GETUPVAL                         R11 5
      176 GETTABLEKS                       R11 R11 K37 ["new"]
      178 CALL                             R11 0 1
      179 SETTABLEKS                       R11 R10 K28 ["localeChanged"]
      181 SETTABLEKS                       R8 R10 K29 ["externalLocaleChanged"]
      183 SETTABLEKS                       R6 R10 K34 ["keyNamespace"]
      185 SETTABLEKS                       R7 R10 K35 ["keyPluginName"]
      187 SETTABLEKS                       R9 R10 K23 ["getLocale"]
      189 GETUPVAL                         R11 6
      190 GETTABLEKS                       R11 R11 K38 ["Dictionary"]
      192 GETTABLEKS                       R11 R11 K39 ["join"]
      194 GETTABLEKS                       R12 R0 K13 ["libraries"]
      196 JUMPIF                           R12 ; [+2]
      197 NEWTABLE                         R12 0 0
      199 NEWTABLE                         R13 1 0
      201 GETTABLEKS                       R14 R10 K35 ["keyPluginName"]
      203 DUPTABLE                         R15 K40 [{"stringResourceTable", "translationResourceTable"}]
      204 SETTABLEKS                       R1 R15 K6 ["stringResourceTable"]
      206 SETTABLEKS                       R2 R15 K8 ["translationResourceTable"]
      208 SETTABLE                         R15 R13 R14
      209 CALL                             R11 2 1
      210 SETTABLEKS                       R11 R10 K41 ["projects"]
      212 NEWTABLE                         R11 0 0
      214 SETTABLEKS                       R11 R10 K42 ["translators"]
      216 NEWTABLE                         R11 0 0
      218 SETTABLEKS                       R11 R10 K43 ["fallbackTranslators"]
      220 GETUPVAL                         R13 7
      221 FASTCALL2                        SETMETATABLE R10 R13 ; [+4]
      223 MOVE                             R12 R10
      224 GETIMPORT                        R11 K45 [setmetatable]
      226 CALL                             R11 2 0
      227 GETTABLEKS                       R11 R10 K29 ["externalLocaleChanged"]
      229 NEWCLOSURE                       R13 P1
      230 CAPTURE                          VAL R10
      231 NAMECALL                         R11 R11 K46 ["Connect"]
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K47 ["localeChangedConnection"]
      236 NAMECALL                         R11 R10 K48 ["updateLocaleAndTranslator"]
      238 CALL                             R11 1 0
      239 RETURN                           R10 1

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
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K1 [pcall]
       11 CALL                             R1 1 2
       12 RETURN                           R1 2

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
       83 JUMPIFNOTEQKS                    R11 K17 ["en-us"] ; [+20]
       85 JUMPIF                           R8 ; [+3]
       86 LOADB                            R11 0
       87 LOADNIL                          R12
       88 JUMP                             ; [+10]
       89 NEWCLOSURE                       R14 P1
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 FASTPCALL                        pcall 1 ; [+2]
       94 GETIMPORT                        R13 K19 [pcall]
       96 CALL                             R13 1 2
       97 MOVE                             R11 R13
       98 MOVE                             R12 R14
       99 MOVE                             R9 R11
      100 MOVE                             R10 R12
      101 JUMPIFNOT                        R9 ; [+38]
      102 RETURN                           R10 1
      103 JUMP                             ; [+36]
      104 JUMPIF                           R7 ; [+3]
      105 LOADB                            R11 0
      106 LOADNIL                          R12
      107 JUMP                             ; [+10]
      108 NEWCLOSURE                       R14 P1
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 FASTPCALL                        pcall 1 ; [+2]
      113 GETIMPORT                        R13 K19 [pcall]
      115 CALL                             R13 1 2
      116 MOVE                             R11 R13
      117 MOVE                             R12 R14
      118 MOVE                             R9 R11
      119 MOVE                             R10 R12
      120 JUMPIFNOT                        R9 ; [+1]
      121 RETURN                           R10 1
      122 JUMPIF                           R8 ; [+3]
      123 LOADB                            R11 0
      124 LOADNIL                          R12
      125 JUMP                             ; [+10]
      126 NEWCLOSURE                       R14 P1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 FASTPCALL                        pcall 1 ; [+2]
      131 GETIMPORT                        R13 K19 [pcall]
      133 CALL                             R13 1 2
      134 MOVE                             R11 R13
      135 MOVE                             R12 R14
      136 MOVE                             R9 R11
      137 MOVE                             R10 R12
      138 JUMPIFNOT                        R9 ; [+1]
      139 RETURN                           R10 1
      140 MOVE                             R12 R10
      141 JUMPIFNOT                        R12 ; [+9]
      142 FASTCALL1                        TYPEOF R10 ; [+3]
      143 MOVE                             R14 R10
      144 GETIMPORT                        R13 K21 [typeof]
      146 CALL                             R13 1 1
      147 JUMPIFEQKS                       R13 K2 ["string"] ; [+2]
      149 LOADB                            R12 0 +1
      150 LOADB                            R12 1
      151 FASTCALL2K                       ASSERT R12 K22 ; [+4]
      153 LOADK                            R13 K22 ["Failed to get translated string"]
      154 GETIMPORT                        R11 K5 [assert]
      156 CALL                             R11 2 0
      157 LOADK                            R14 K23 ["RefactorTranslatorInstance"]
      158 NEWCLOSURE                       R13 P2
      159 CAPTURE                          VAL R14
      160 FASTPCALL                        pcall 1 ; [+2]
      161 GETIMPORT                        R12 K19 [pcall]
      163 CALL                             R12 1 2
      164 JUMPIFNOT                        R12 ; [+2]
      165 MOVE                             R11 R13
      166 JUMPIF                           R11 ; [+1]
      167 LOADB                            R11 0
      168 JUMPIFNOT                        R11 ; [+19]
      169 GETTABLEKS                       R11 R0 K24 ["keyPluginName"]
      171 JUMPIFEQKS                       R11 K25 ["Test"] ; [+34]
      173 JUMPIF                           R9 ; [+32]
      174 GETIMPORT                        R11 K27 [string.find]
      176 MOVE                             R12 R10
      177 LOADK                            R13 K28 ["Key .* not found for locale"]
      178 CALL                             R11 2 1
      179 JUMPIF                           R11 ; [+26]
      180 GETIMPORT                        R11 K30 [warn]
      182 MOVE                             R12 R10
      183 GETIMPORT                        R13 K33 [debug.traceback]
      185 CALL                             R13 0 -1
      186 CALL                             R11 -1 0
      187 RETURN                           R5 1
      188 GETTABLEKS                       R11 R0 K24 ["keyPluginName"]
      190 JUMPIFEQKS                       R11 K25 ["Test"] ; [+15]
      192 JUMPIF                           R9 ; [+13]
      193 GETIMPORT                        R11 K27 [string.find]
      195 MOVE                             R12 R10
      196 LOADK                            R13 K34 ["LocalizationTable or parent tables do not contain a translation"]
      197 CALL                             R11 2 1
      198 JUMPIF                           R11 ; [+7]
      199 GETIMPORT                        R11 K30 [warn]
      201 MOVE                             R12 R10
      202 GETIMPORT                        R13 K33 [debug.traceback]
      204 CALL                             R13 0 -1
      205 CALL                             R11 -1 0
      206 RETURN                           R5 1

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
       23 JUMPIFNOTEQKS                    R2 K9 ["Truncate"] ; [+8]
       25 MUL                              R7 R0 R4
       26 FASTCALL1                        MATH_MODF R7 ; [+2]
       27 GETIMPORT                        R6 K11 [math.modf]
       29 CALL                             R6 1 1
       30 MOVE                             R5 R6
       31 JUMP                             ; [+7]
       32 MUL                              R8 R0 R4
       33 ADDK                             R7 R8 K12 [0.5]
       34 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       35 GETIMPORT                        R6 K7 [math.floor]
       37 CALL                             R6 1 1
       38 MOVE                             R5 R6
       39 DIV                              R6 R5 R4
       40 RETURN                           R6 1

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
       10 LOADN                            R7 -1
       11 FORNPREP                         R6
       12 GETTABLE                         R9 R3 R8
       13 LOADNIL                          R10
       14 JUMPIFNOTEQKS                    R2 K4 ["Truncate"] ; [+3]
       16 GETTABLEN                        R10 R9 1
       17 JUMP                             ; [+6]
       18 GETTABLEN                        R11 R9 1
       19 SUBK                             R15 R8 K6 [1]
       20 GETTABLE                         R14 R3 R15
       21 GETTABLEN                        R13 R14 1
       22 DIVK                             R12 R13 K5 [2]
       23 SUB                              R10 R11 R12
       24 JUMPIFNOTLE                      R10 R5 ; [+3]
       26 MOVE                             R4 R9
       27 RETURN                           R4 1
       28 FORNLOOP                         R6
       29 RETURN                           R4 1

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
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADK                            R2 K2 ["RoundToClosest"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADN                            R3 3
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R6 R0 K3 ["locale"]
       13 GETTABLE                         R4 R5 R6
       14 JUMPIF                           R4 ; [+3]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K4 ["en-us"]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R4
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 CALL                             R5 3 1
       23 GETTABLEN                        R6 R5 1
       24 GETTABLEN                        R7 R5 2
       25 DIV                              R9 R1 R6
       26 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       28 LOADN                            R12 0
       29 JUMP                             ; [+15]
       30 FASTCALL1                        MATH_ABS R9 ; [+3]
       31 MOVE                             R16 R9
       32 GETIMPORT                        R15 K7 [math.abs]
       34 CALL                             R15 1 1
       35 FASTCALL1                        MATH_LOG10 R15 ; [+2]
       36 GETIMPORT                        R14 K9 [math.log10]
       38 CALL                             R14 1 1
       39 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       40 GETIMPORT                        R13 K11 [math.floor]
       42 CALL                             R13 1 1
       43 ADDK                             R14 R13 K12 [1]
       44 MINUS                            R12 R14
       45 LOADN                            R14 10
       46 ADD                              R15 R3 R12
       47 POW                              R13 R14 R15
       48 LOADNIL                          R14
       49 GETUPVAL                         R15 2
       50 GETTABLEKS                       R15 R15 K13 ["Truncate"]
       52 JUMPIFNOTEQ                      R2 R15 ; [+8]
       54 MUL                              R16 R9 R13
       55 FASTCALL1                        MATH_MODF R16 ; [+2]
       56 GETIMPORT                        R15 K15 [math.modf]
       58 CALL                             R15 1 1
       59 MOVE                             R14 R15
       60 JUMP                             ; [+7]
       61 MUL                              R17 R9 R13
       62 ADDK                             R16 R17 K16 [0.5]
       63 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       64 GETIMPORT                        R15 K11 [math.floor]
       66 CALL                             R15 1 1
       67 MOVE                             R14 R15
       68 DIV                              R8 R14 R13
       69 LOADNIL                          R9
       70 JUMPIFNOTEQKS                    R2 K13 ["Truncate"] ; [+8]
       72 MULK                             R11 R8 K17 [10]
       73 FASTCALL1                        MATH_MODF R11 ; [+2]
       74 GETIMPORT                        R10 K15 [math.modf]
       76 CALL                             R10 1 1
       77 DIVK                             R9 R10 K17 [10]
       78 JUMP                             ; [+7]
       79 MULK                             R12 R8 K17 [10]
       80 ADDK                             R11 R12 K16 [0.5]
       81 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       82 GETIMPORT                        R10 K11 [math.floor]
       84 CALL                             R10 1 1
       85 DIVK                             R9 R10 K17 [10]
       86 FASTCALL1                        TOSTRING R9 ; [+3]
       87 MOVE                             R11 R9
       88 GETIMPORT                        R10 K19 [tostring]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K22 [string.find]
       93 MOVE                             R12 R10
       94 LOADK                            R13 K23 ["%."]
       95 CALL                             R11 2 1
       96 JUMPIF                           R11 ; [+2]
       97 LENGTH                           R12 R10
       98 ADDK                             R11 R12 K12 [1]
       99 LOADN                            R14 1
      100 SUBK                             R15 R11 K12 [1]
      101 FASTCALL3                        STRING_SUB R10 R14 R15
      103 MOVE                             R13 R10
      104 GETIMPORT                        R12 K25 [string.sub]
      106 CALL                             R12 3 1
      107 ADDK                             R15 R11 K12 [1]
      108 LENGTH                           R16 R10
      109 FASTCALL3                        STRING_SUB R10 R15 R16
      111 MOVE                             R14 R10
      112 GETIMPORT                        R13 K25 [string.sub]
      114 CALL                             R13 3 1
      115 GETTABLEKS                       R14 R4 K26 ["groupDelimiter"]
      117 JUMPIFNOT                        R14 ; [+6]
      118 GETUPVAL                         R14 3
      119 MOVE                             R15 R12
      120 GETTABLEKS                       R16 R4 K26 ["groupDelimiter"]
      122 CALL                             R14 2 1
      123 MOVE                             R12 R14
      124 LENGTH                           R14 R13
      125 LOADN                            R15 0
      126 JUMPIFNOTLT                      R15 R14 ; [+8]
      128 MOVE                             R15 R12
      129 GETTABLEKS                       R16 R4 K27 ["decimalSeparator"]
      131 MOVE                             R17 R13
      132 MOVE                             R18 R7
      133 CONCAT                           R14 R15 R18
      134 RETURN                           R14 1
      135 MOVE                             R15 R12
      136 MOVE                             R16 R7
      137 CONCAT                           R14 R15 R16
      138 RETURN                           R14 1

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
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["new"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["Dictionary"]
       19 GETTABLEKS                       R4 R4 K7 ["join"]
       21 DUPTABLE                         R5 K13 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Test", ["overrideLocaleChangedSignal"], ["getLocale"]}]
       22 SETTABLEKS                       R1 R5 K8 ["stringResourceTable"]
       24 SETTABLEKS                       R1 R5 K9 ["translationResourceTable"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K5 ["new"]
       29 CALL                             R6 0 1
       30 SETTABLEKS                       R6 R5 K12 ["overrideLocaleChangedSignal"]
       32 SETTABLEKS                       R2 R5 K3 ["getLocale"]
       34 MOVE                             R6 R0
       35 JUMPIF                           R6 ; [+2]
       36 NEWTABLE                         R6 0 0
       38 CALL                             R4 2 1
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K6 [pcall]
       11 CALL                             R1 1 2
       12 GETIMPORT                        R3 K8 [script]
       14 LOADK                            R5 K9 ["AssistantUI"]
       15 NAMECALL                         R3 R3 K10 ["FindFirstAncestor"]
       17 CALL                             R3 2 1
       18 GETIMPORT                        R4 K12 [require]
       20 GETTABLEKS                       R5 R3 K13 ["Parent"]
       22 GETTABLEKS                       R5 R5 K14 ["Cryo"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K12 [require]
       27 GETTABLEKS                       R6 R3 K13 ["Parent"]
       29 GETTABLEKS                       R6 R6 K15 ["Signal"]
       31 CALL                             R5 1 1
       32 NEWTABLE                         R6 16 0
       34 SETTABLEKS                       R6 R6 K16 ["__index"]
       36 LOADB                            R7 0
       37 GETIMPORT                        R9 K1 [game]
       39 GETTABLEKS                       R9 R9 K17 ["DefineFastFlag"]
       41 GETIMPORT                        R10 K1 [game]
       43 LOADK                            R11 K18 ["CorrectlyParseQTLocale"]
       44 LOADB                            R12 0
       45 FASTPCALL                        pcall 4 ; [+2]
       46 GETIMPORT                        R8 K6 [pcall]
       48 CALL                             R8 4 2
       49 JUMPIFNOT                        R8 ; [+1]
       50 MOVE                             R7 R9
       51 DUPCLOSURE                       R8 K19 [PROTO_2]
       52 DUPCLOSURE                       R9 K20 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 DUPCLOSURE                       R10 K21 [PROTO_6]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 NEWCLOSURE                       R11 P4
       61 CAPTURE                          VAL R10
       62 CAPTURE                          REF R7
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R11 R6 K22 ["new"]
       71 DUPCLOSURE                       R11 K23 [PROTO_10]
       72 SETTABLEKS                       R11 R6 K24 ["getSignal"]
       74 DUPCLOSURE                       R11 K25 [PROTO_11]
       75 SETTABLEKS                       R11 R6 K26 ["getConsumerItem"]
       77 DUPCLOSURE                       R11 K27 [PROTO_12]
       78 SETTABLEKS                       R11 R6 K28 ["getText"]
       80 DUPCLOSURE                       R11 K29 [PROTO_15]
       81 SETTABLEKS                       R11 R6 K30 ["getProjectText"]
       83 DUPCLOSURE                       R11 K31 [PROTO_16]
       84 SETTABLEKS                       R11 R6 K32 ["destroy"]
       86 DUPCLOSURE                       R11 K33 [PROTO_17]
       87 SETTABLEKS                       R11 R6 K34 ["updateLocaleAndTranslator"]
       89 DUPTABLE                         R11 K37 [{["RoundToClosest"] = "RoundToClosest", ["Truncate"] = "Truncate"}]
       90 NEWTABLE                         R12 0 0
       92 NEWTABLE                         R13 4 0
       94 LOADK                            R14 K38 ["."]
       95 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
       97 LOADK                            R14 K40 [","]
       98 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      100 NEWTABLE                         R14 0 4
      102 NEWTABLE                         R15 0 2
      104 LOADN                            R16 1
      105 LOADK                            R17 K42 [""]
      106 SETLIST                          R15 R16 2 [1]
      108 NEWTABLE                         R16 0 2
      110 LOADN                            R17 1000
      111 LOADK                            R18 K43 ["K"]
      112 SETLIST                          R16 R17 2 [1]
      114 NEWTABLE                         R17 0 2
      116 LOADK                            R18 K44 [1000000]
      117 LOADK                            R19 K45 ["M"]
      118 SETLIST                          R17 R18 2 [1]
      120 NEWTABLE                         R18 0 2
      122 LOADK                            R19 K46 [1000000000]
      123 LOADK                            R20 K47 ["B"]
      124 SETLIST                          R18 R19 2 [1]
      126 SETLIST                          R14 R15 4 [1]
      128 SETTABLEKS                       R14 R13 K48 ["entries"]
      130 SETTABLEKS                       R13 R12 K49 ["en-us"]
      132 NEWTABLE                         R13 4 0
      134 LOADK                            R14 K40 [","]
      135 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      137 LOADK                            R14 K38 ["."]
      138 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      140 NEWTABLE                         R14 0 3
      142 NEWTABLE                         R15 0 2
      144 LOADN                            R16 1
      145 LOADK                            R17 K42 [""]
      146 SETLIST                          R15 R16 2 [1]
      148 NEWTABLE                         R16 0 2
      150 LOADN                            R17 1000
      151 LOADK                            R18 K50 [" mil"]
      152 SETLIST                          R16 R17 2 [1]
      154 NEWTABLE                         R17 0 2
      156 LOADK                            R18 K44 [1000000]
      157 LOADK                            R19 K51 [" M"]
      158 SETLIST                          R17 R18 2 [1]
      160 SETLIST                          R14 R15 3 [1]
      162 SETTABLEKS                       R14 R13 K48 ["entries"]
      164 SETTABLEKS                       R13 R12 K52 ["es-es"]
      166 NEWTABLE                         R13 4 0
      168 LOADK                            R14 K40 [","]
      169 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      171 LOADK                            R14 K53 [" "]
      172 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      174 NEWTABLE                         R14 0 4
      176 NEWTABLE                         R15 0 2
      178 LOADN                            R16 1
      179 LOADK                            R17 K42 [""]
      180 SETLIST                          R15 R16 2 [1]
      182 NEWTABLE                         R16 0 2
      184 LOADN                            R17 1000
      185 LOADK                            R18 K54 [" k"]
      186 SETLIST                          R16 R17 2 [1]
      188 NEWTABLE                         R17 0 2
      190 LOADK                            R18 K44 [1000000]
      191 LOADK                            R19 K51 [" M"]
      192 SETLIST                          R17 R18 2 [1]
      194 NEWTABLE                         R18 0 2
      196 LOADK                            R19 K46 [1000000000]
      197 LOADK                            R20 K55 [" Md"]
      198 SETLIST                          R18 R19 2 [1]
      200 SETLIST                          R14 R15 4 [1]
      202 SETTABLEKS                       R14 R13 K48 ["entries"]
      204 SETTABLEKS                       R13 R12 K56 ["fr-fr"]
      206 NEWTABLE                         R13 4 0
      208 LOADK                            R14 K40 [","]
      209 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      211 LOADK                            R14 K53 [" "]
      212 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      214 NEWTABLE                         R14 0 4
      216 NEWTABLE                         R15 0 2
      218 LOADN                            R16 1
      219 LOADK                            R17 K42 [""]
      220 SETLIST                          R15 R16 2 [1]
      222 NEWTABLE                         R16 0 2
      224 LOADN                            R17 1000
      225 LOADK                            R18 K57 [" Tsd."]
      226 SETLIST                          R16 R17 2 [1]
      228 NEWTABLE                         R17 0 2
      230 LOADK                            R18 K44 [1000000]
      231 LOADK                            R19 K58 [" Mio."]
      232 SETLIST                          R17 R18 2 [1]
      234 NEWTABLE                         R18 0 2
      236 LOADK                            R19 K46 [1000000000]
      237 LOADK                            R20 K59 [" Mrd."]
      238 SETLIST                          R18 R19 2 [1]
      240 SETLIST                          R14 R15 4 [1]
      242 SETTABLEKS                       R14 R13 K48 ["entries"]
      244 SETTABLEKS                       R13 R12 K60 ["de-de"]
      246 NEWTABLE                         R13 4 0
      248 LOADK                            R14 K40 [","]
      249 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      251 LOADK                            R14 K38 ["."]
      252 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      254 NEWTABLE                         R14 0 4
      256 NEWTABLE                         R15 0 2
      258 LOADN                            R16 1
      259 LOADK                            R17 K42 [""]
      260 SETLIST                          R15 R16 2 [1]
      262 NEWTABLE                         R16 0 2
      264 LOADN                            R17 1000
      265 LOADK                            R18 K50 [" mil"]
      266 SETLIST                          R16 R17 2 [1]
      268 NEWTABLE                         R17 0 2
      270 LOADK                            R18 K44 [1000000]
      271 LOADK                            R19 K61 [" mi"]
      272 SETLIST                          R17 R18 2 [1]
      274 NEWTABLE                         R18 0 2
      276 LOADK                            R19 K46 [1000000000]
      277 LOADK                            R20 K62 [" bi"]
      278 SETLIST                          R18 R19 2 [1]
      280 SETLIST                          R14 R15 4 [1]
      282 SETTABLEKS                       R14 R13 K48 ["entries"]
      284 SETTABLEKS                       R13 R12 K63 ["pt-br"]
      286 NEWTABLE                         R13 4 0
      288 LOADK                            R14 K38 ["."]
      289 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      291 LOADK                            R14 K40 [","]
      292 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      294 NEWTABLE                         R14 0 4
      296 NEWTABLE                         R15 0 2
      298 LOADN                            R16 1
      299 LOADK                            R17 K42 [""]
      300 SETLIST                          R15 R16 2 [1]
      302 NEWTABLE                         R16 0 2
      304 LOADN                            R17 1000
      305 LOADK                            R18 K64 ["千"]
      306 SETLIST                          R16 R17 2 [1]
      308 NEWTABLE                         R17 0 2
      310 LOADN                            R18 10000
      311 LOADK                            R19 K65 ["万"]
      312 SETLIST                          R17 R18 2 [1]
      314 NEWTABLE                         R18 0 2
      316 LOADK                            R19 K66 [100000000]
      317 LOADK                            R20 K67 ["亿"]
      318 SETLIST                          R18 R19 2 [1]
      320 SETLIST                          R14 R15 4 [1]
      322 SETTABLEKS                       R14 R13 K48 ["entries"]
      324 SETTABLEKS                       R13 R12 K68 ["zh-cn"]
      326 NEWTABLE                         R13 4 0
      328 LOADK                            R14 K38 ["."]
      329 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      331 LOADK                            R14 K40 [","]
      332 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      334 NEWTABLE                         R14 0 4
      336 NEWTABLE                         R15 0 2
      338 LOADN                            R16 1
      339 LOADK                            R17 K42 [""]
      340 SETLIST                          R15 R16 2 [1]
      342 NEWTABLE                         R16 0 2
      344 LOADN                            R17 1000
      345 LOADK                            R18 K64 ["千"]
      346 SETLIST                          R16 R17 2 [1]
      348 NEWTABLE                         R17 0 2
      350 LOADN                            R18 10000
      351 LOADK                            R19 K65 ["万"]
      352 SETLIST                          R17 R18 2 [1]
      354 NEWTABLE                         R18 0 2
      356 LOADK                            R19 K66 [100000000]
      357 LOADK                            R20 K67 ["亿"]
      358 SETLIST                          R18 R19 2 [1]
      360 SETLIST                          R14 R15 4 [1]
      362 SETTABLEKS                       R14 R13 K48 ["entries"]
      364 SETTABLEKS                       R13 R12 K69 ["zh-cjv"]
      366 NEWTABLE                         R13 4 0
      368 LOADK                            R14 K38 ["."]
      369 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      371 LOADK                            R14 K40 [","]
      372 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      374 NEWTABLE                         R14 0 4
      376 NEWTABLE                         R15 0 2
      378 LOADN                            R16 1
      379 LOADK                            R17 K42 [""]
      380 SETLIST                          R15 R16 2 [1]
      382 NEWTABLE                         R16 0 2
      384 LOADN                            R17 1000
      385 LOADK                            R18 K64 ["千"]
      386 SETLIST                          R16 R17 2 [1]
      388 NEWTABLE                         R17 0 2
      390 LOADN                            R18 10000
      391 LOADK                            R19 K70 ["萬"]
      392 SETLIST                          R17 R18 2 [1]
      394 NEWTABLE                         R18 0 2
      396 LOADK                            R19 K66 [100000000]
      397 LOADK                            R20 K71 ["億"]
      398 SETLIST                          R18 R19 2 [1]
      400 SETLIST                          R14 R15 4 [1]
      402 SETTABLEKS                       R14 R13 K48 ["entries"]
      404 SETTABLEKS                       R13 R12 K72 ["zh-tw"]
      406 NEWTABLE                         R13 4 0
      408 LOADK                            R14 K38 ["."]
      409 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      411 LOADK                            R14 K40 [","]
      412 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      414 NEWTABLE                         R14 0 4
      416 NEWTABLE                         R15 0 2
      418 LOADN                            R16 1
      419 LOADK                            R17 K42 [""]
      420 SETLIST                          R15 R16 2 [1]
      422 NEWTABLE                         R16 0 2
      424 LOADN                            R17 1000
      425 LOADK                            R18 K73 ["천"]
      426 SETLIST                          R16 R17 2 [1]
      428 NEWTABLE                         R17 0 2
      430 LOADN                            R18 10000
      431 LOADK                            R19 K74 ["만"]
      432 SETLIST                          R17 R18 2 [1]
      434 NEWTABLE                         R18 0 2
      436 LOADK                            R19 K66 [100000000]
      437 LOADK                            R20 K75 ["억"]
      438 SETLIST                          R18 R19 2 [1]
      440 SETLIST                          R14 R15 4 [1]
      442 SETTABLEKS                       R14 R13 K48 ["entries"]
      444 SETTABLEKS                       R13 R12 K76 ["ko-kr"]
      446 NEWTABLE                         R13 4 0
      448 LOADK                            R14 K38 ["."]
      449 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      451 LOADK                            R14 K40 [","]
      452 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      454 NEWTABLE                         R14 0 4
      456 NEWTABLE                         R15 0 2
      458 LOADN                            R16 1
      459 LOADK                            R17 K42 [""]
      460 SETLIST                          R15 R16 2 [1]
      462 NEWTABLE                         R16 0 2
      464 LOADN                            R17 1000
      465 LOADK                            R18 K64 ["千"]
      466 SETLIST                          R16 R17 2 [1]
      468 NEWTABLE                         R17 0 2
      470 LOADN                            R18 10000
      471 LOADK                            R19 K65 ["万"]
      472 SETLIST                          R17 R18 2 [1]
      474 NEWTABLE                         R18 0 2
      476 LOADK                            R19 K66 [100000000]
      477 LOADK                            R20 K71 ["億"]
      478 SETLIST                          R18 R19 2 [1]
      480 SETLIST                          R14 R15 4 [1]
      482 SETTABLEKS                       R14 R13 K48 ["entries"]
      484 SETTABLEKS                       R13 R12 K77 ["ja-jp"]
      486 NEWTABLE                         R13 4 0
      488 LOADK                            R14 K40 [","]
      489 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      491 LOADK                            R14 K53 [" "]
      492 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      494 NEWTABLE                         R14 0 4
      496 NEWTABLE                         R15 0 2
      498 LOADN                            R16 1
      499 LOADK                            R17 K42 [""]
      500 SETLIST                          R15 R16 2 [1]
      502 NEWTABLE                         R16 0 2
      504 LOADN                            R17 1000
      505 LOADK                            R18 K78 [" mila"]
      506 SETLIST                          R16 R17 2 [1]
      508 NEWTABLE                         R17 0 2
      510 LOADK                            R18 K44 [1000000]
      511 LOADK                            R19 K79 [" Mln"]
      512 SETLIST                          R17 R18 2 [1]
      514 NEWTABLE                         R18 0 2
      516 LOADK                            R19 K46 [1000000000]
      517 LOADK                            R20 K80 [" Mld"]
      518 SETLIST                          R18 R19 2 [1]
      520 SETLIST                          R14 R15 4 [1]
      522 SETTABLEKS                       R14 R13 K48 ["entries"]
      524 SETTABLEKS                       R13 R12 K81 ["it-it"]
      526 NEWTABLE                         R13 4 0
      528 LOADK                            R14 K40 [","]
      529 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      531 LOADK                            R14 K38 ["."]
      532 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      534 NEWTABLE                         R14 0 4
      536 NEWTABLE                         R15 0 2
      538 LOADN                            R16 1
      539 LOADK                            R17 K42 [""]
      540 SETLIST                          R15 R16 2 [1]
      542 NEWTABLE                         R16 0 2
      544 LOADN                            R17 1000
      545 LOADK                            R18 K82 [" тыс"]
      546 SETLIST                          R16 R17 2 [1]
      548 NEWTABLE                         R17 0 2
      550 LOADK                            R18 K44 [1000000]
      551 LOADK                            R19 K83 [" млн"]
      552 SETLIST                          R17 R18 2 [1]
      554 NEWTABLE                         R18 0 2
      556 LOADK                            R19 K46 [1000000000]
      557 LOADK                            R20 K84 [" млрд"]
      558 SETLIST                          R18 R19 2 [1]
      560 SETLIST                          R14 R15 4 [1]
      562 SETTABLEKS                       R14 R13 K48 ["entries"]
      564 SETTABLEKS                       R13 R12 K85 ["ru-ru"]
      566 NEWTABLE                         R13 4 0
      568 LOADK                            R14 K40 [","]
      569 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      571 LOADK                            R14 K38 ["."]
      572 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      574 NEWTABLE                         R14 0 4
      576 NEWTABLE                         R15 0 2
      578 LOADN                            R16 1
      579 LOADK                            R17 K42 [""]
      580 SETLIST                          R15 R16 2 [1]
      582 NEWTABLE                         R16 0 2
      584 LOADN                            R17 1000
      585 LOADK                            R18 K86 [" rb"]
      586 SETLIST                          R16 R17 2 [1]
      588 NEWTABLE                         R17 0 2
      590 LOADK                            R18 K44 [1000000]
      591 LOADK                            R19 K87 [" jt"]
      592 SETLIST                          R17 R18 2 [1]
      594 NEWTABLE                         R18 0 2
      596 LOADK                            R19 K46 [1000000000]
      597 LOADK                            R20 K51 [" M"]
      598 SETLIST                          R18 R19 2 [1]
      600 SETLIST                          R14 R15 4 [1]
      602 SETTABLEKS                       R14 R13 K48 ["entries"]
      604 SETTABLEKS                       R13 R12 K88 ["id-id"]
      606 NEWTABLE                         R13 4 0
      608 LOADK                            R14 K38 ["."]
      609 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      611 LOADK                            R14 K53 [" "]
      612 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      614 NEWTABLE                         R14 0 4
      616 NEWTABLE                         R15 0 2
      618 LOADN                            R16 1
      619 LOADK                            R17 K42 [""]
      620 SETLIST                          R15 R16 2 [1]
      622 NEWTABLE                         R16 0 2
      624 LOADN                            R17 1000
      625 LOADK                            R18 K89 [" N"]
      626 SETLIST                          R16 R17 2 [1]
      628 NEWTABLE                         R17 0 2
      630 LOADK                            R18 K44 [1000000]
      631 LOADK                            R19 K90 [" Tr"]
      632 SETLIST                          R17 R18 2 [1]
      634 NEWTABLE                         R18 0 2
      636 LOADK                            R19 K46 [1000000000]
      637 LOADK                            R20 K91 [" T"]
      638 SETLIST                          R18 R19 2 [1]
      640 SETLIST                          R14 R15 4 [1]
      642 SETTABLEKS                       R14 R13 K48 ["entries"]
      644 SETTABLEKS                       R13 R12 K92 ["vi-vn"]
      646 NEWTABLE                         R13 4 0
      648 LOADK                            R14 K38 ["."]
      649 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      651 LOADK                            R14 K40 [","]
      652 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      654 NEWTABLE                         R14 0 5
      656 NEWTABLE                         R15 0 2
      658 LOADN                            R16 1
      659 LOADK                            R17 K42 [""]
      660 SETLIST                          R15 R16 2 [1]
      662 NEWTABLE                         R16 0 2
      664 LOADN                            R17 1000
      665 LOADK                            R18 K93 [" พ"]
      666 SETLIST                          R16 R17 2 [1]
      668 NEWTABLE                         R17 0 2
      670 LOADN                            R18 10000
      671 LOADK                            R19 K94 [" ม"]
      672 SETLIST                          R17 R18 2 [1]
      674 NEWTABLE                         R18 0 2
      676 LOADK                            R19 K95 [100000]
      677 LOADK                            R20 K96 [" ส"]
      678 SETLIST                          R18 R19 2 [1]
      680 NEWTABLE                         R19 0 2
      682 LOADK                            R20 K44 [1000000]
      683 LOADK                            R21 K97 [" ล"]
      684 SETLIST                          R19 R20 2 [1]
      686 SETLIST                          R14 R15 5 [1]
      688 SETTABLEKS                       R14 R13 K48 ["entries"]
      690 SETTABLEKS                       R13 R12 K98 ["th-th"]
      692 NEWTABLE                         R13 4 0
      694 LOADK                            R14 K40 [","]
      695 SETTABLEKS                       R14 R13 K39 ["decimalSeparator"]
      697 LOADK                            R14 K38 ["."]
      698 SETTABLEKS                       R14 R13 K41 ["groupDelimiter"]
      700 NEWTABLE                         R14 0 4
      702 NEWTABLE                         R15 0 2
      704 LOADN                            R16 1
      705 LOADK                            R17 K42 [""]
      706 SETLIST                          R15 R16 2 [1]
      708 NEWTABLE                         R16 0 2
      710 LOADN                            R17 1000
      711 LOADK                            R18 K99 [" B"]
      712 SETLIST                          R16 R17 2 [1]
      714 NEWTABLE                         R17 0 2
      716 LOADK                            R18 K44 [1000000]
      717 LOADK                            R19 K100 [" Mn"]
      718 SETLIST                          R17 R18 2 [1]
      720 NEWTABLE                         R18 0 2
      722 LOADK                            R19 K46 [1000000000]
      723 LOADK                            R20 K101 [" Mr"]
      724 SETLIST                          R18 R19 2 [1]
      726 SETLIST                          R14 R15 4 [1]
      728 SETTABLEKS                       R14 R13 K48 ["entries"]
      730 SETTABLEKS                       R13 R12 K102 ["tr-tr"]
      732 GETTABLEKS                       R13 R12 K49 ["en-us"]
      734 SETTABLEKS                       R13 R12 K103 ["en-gb"]
      736 GETTABLEKS                       R13 R12 K52 ["es-es"]
      738 SETTABLEKS                       R13 R12 K104 ["es-mx"]
      740 DUPCLOSURE                       R13 K105 [PROTO_18]
      741 DUPCLOSURE                       R14 K106 [PROTO_19]
      742 DUPCLOSURE                       R15 K107 [PROTO_20]
      743 DUPCLOSURE                       R16 K108 [PROTO_21]
      744 DUPCLOSURE                       R17 K109 [PROTO_22]
      745 DUPCLOSURE                       R18 K110 [PROTO_23]
      746 CAPTURE                          VAL R12
      747 CAPTURE                          VAL R16
      748 SETTABLEKS                       R18 R6 K111 ["localizeNumber"]
      750 DUPCLOSURE                       R18 K112 [PROTO_24]
      751 CAPTURE                          VAL R12
      752 CAPTURE                          VAL R17
      753 CAPTURE                          VAL R11
      754 CAPTURE                          VAL R16
      755 SETTABLEKS                       R18 R6 K113 ["localizeAndAbbreviateNumber"]
      757 DUPCLOSURE                       R18 K114 [PROTO_28]
      758 CAPTURE                          VAL R6
      759 CAPTURE                          VAL R4
      760 CAPTURE                          VAL R5
      761 SETTABLEKS                       R18 R6 K115 ["mock"]
      763 CLOSEUPVALS                      R7
      764 RETURN                           R6 1
