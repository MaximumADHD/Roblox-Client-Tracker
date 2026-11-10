PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["onResolved"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 1
       23 GETTABLEKS                       R6 R0 K2 ["onResolved"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETTABLEKS                       R5 R0 K3 ["input"]
       30 GETTABLEKS                       R5 R5 K4 ["canWrite"]
       32 JUMPIFNOT                        R5 ; [+2]
       33 LOADK                            R4 K5 ["ReadWritePrompt"]
       34 JUMP                             ; [+1]
       35 LOADK                            R4 K6 ["ReadPrompt"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K7 ["createElement"]
       39 GETUPVAL                         R6 2
       40 DUPTABLE                         R7 K16 [{["uri"], ["type"] = "Warning", ["title"], ["width"] = 450, ["primaryAction"], ["secondaryAction"]}]
       41 GETTABLEKS                       R8 R0 K8 ["uri"]
       43 SETTABLEKS                       R8 R7 K8 ["uri"]
       45 LOADK                            R10 K17 ["VirtualFileSystemAccessDialog"]
       46 LOADK                            R11 K18 ["Title"]
       47 NAMECALL                         R8 R1 K19 ["getText"]
       49 CALL                             R8 3 1
       50 SETTABLEKS                       R8 R7 K11 ["title"]
       52 DUPTABLE                         R8 K22 [{"uri", "text", "onActivated"}]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K23 ["child"]
       56 GETTABLEKS                       R10 R0 K8 ["uri"]
       58 LOADK                            R11 K24 ["Allow"]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K8 ["uri"]
       62 LOADK                            R11 K17 ["VirtualFileSystemAccessDialog"]
       63 LOADK                            R12 K25 ["AllowButton"]
       64 NAMECALL                         R9 R1 K19 ["getText"]
       66 CALL                             R9 3 1
       67 SETTABLEKS                       R9 R8 K20 ["text"]
       69 SETTABLEKS                       R2 R8 K21 ["onActivated"]
       71 SETTABLEKS                       R8 R7 K14 ["primaryAction"]
       73 DUPTABLE                         R8 K22 [{"uri", "text", "onActivated"}]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K23 ["child"]
       77 GETTABLEKS                       R10 R0 K8 ["uri"]
       79 LOADK                            R11 K26 ["Deny"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K8 ["uri"]
       83 LOADK                            R11 K17 ["VirtualFileSystemAccessDialog"]
       84 LOADK                            R12 K27 ["DenyButton"]
       85 NAMECALL                         R9 R1 K19 ["getText"]
       87 CALL                             R9 3 1
       88 SETTABLEKS                       R9 R8 K20 ["text"]
       90 SETTABLEKS                       R3 R8 K21 ["onActivated"]
       92 SETTABLEKS                       R8 R7 K15 ["secondaryAction"]
       94 DUPTABLE                         R8 K29 [{"Content"}]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R9 R9 K7 ["createElement"]
       98 GETUPVAL                         R10 4
       99 GETTABLEKS                       R10 R10 K30 ["View"]
      101 DUPTABLE                         R11 K33 [{["tag"] = "col gap-large size-full-0 auto-y"}]
      102 DUPTABLE                         R12 K38 [{"Prompt", "Caution", "Reason", "RevocationNotice"}]
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R13 R13 K7 ["createElement"]
      106 GETUPVAL                         R14 4
      107 GETTABLEKS                       R14 R14 K39 ["Text"]
      109 DUPTABLE                         R15 K45 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left", ["RichText"] = False, ["Text"]}]
      110 LOADK                            R18 K17 ["VirtualFileSystemAccessDialog"]
      111 MOVE                             R19 R4
      112 DUPTABLE                         R20 K47 [{"pluginName"}]
      113 GETTABLEKS                       R21 R0 K3 ["input"]
      115 GETTABLEKS                       R21 R21 K46 ["pluginName"]
      117 SETTABLEKS                       R21 R20 K46 ["pluginName"]
      119 NAMECALL                         R16 R1 K19 ["getText"]
      121 CALL                             R16 4 1
      122 SETTABLEKS                       R16 R15 K39 ["Text"]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K34 ["Prompt"]
      127 GETUPVAL                         R13 1
      128 GETTABLEKS                       R13 R13 K7 ["createElement"]
      130 GETUPVAL                         R14 4
      131 GETTABLEKS                       R14 R14 K39 ["Text"]
      133 DUPTABLE                         R15 K50 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"]}]
      134 LOADK                            R18 K17 ["VirtualFileSystemAccessDialog"]
      135 LOADK                            R19 K35 ["Caution"]
      136 NAMECALL                         R16 R1 K19 ["getText"]
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K39 ["Text"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K35 ["Caution"]
      144 GETUPVAL                         R13 1
      145 GETTABLEKS                       R13 R13 K7 ["createElement"]
      147 GETUPVAL                         R14 4
      148 GETTABLEKS                       R14 R14 K39 ["Text"]
      150 DUPTABLE                         R15 K52 [{["LayoutOrder"] = 3, ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["RichText"] = False, ["Text"]}]
      151 LOADK                            R18 K17 ["VirtualFileSystemAccessDialog"]
      152 LOADK                            R19 K36 ["Reason"]
      153 DUPTABLE                         R20 K54 [{"pluginName", "reason"}]
      154 GETTABLEKS                       R21 R0 K3 ["input"]
      156 GETTABLEKS                       R21 R21 K46 ["pluginName"]
      158 SETTABLEKS                       R21 R20 K46 ["pluginName"]
      160 GETTABLEKS                       R21 R0 K3 ["input"]
      162 GETTABLEKS                       R21 R21 K53 ["reason"]
      164 SETTABLEKS                       R21 R20 K53 ["reason"]
      166 NAMECALL                         R16 R1 K19 ["getText"]
      168 CALL                             R16 4 1
      169 SETTABLEKS                       R16 R15 K39 ["Text"]
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K36 ["Reason"]
      174 GETUPVAL                         R13 1
      175 GETTABLEKS                       R13 R13 K7 ["createElement"]
      177 GETUPVAL                         R14 4
      178 GETTABLEKS                       R14 R14 K39 ["Text"]
      180 DUPTABLE                         R15 K57 [{["LayoutOrder"] = 4, ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"]}]
      181 LOADK                            R18 K17 ["VirtualFileSystemAccessDialog"]
      182 LOADK                            R19 K37 ["RevocationNotice"]
      183 NAMECALL                         R16 R1 K19 ["getText"]
      185 CALL                             R16 3 1
      186 SETTABLEKS                       R16 R15 K39 ["Text"]
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K37 ["RevocationNotice"]
      191 CALL                             R9 3 1
      192 SETTABLEKS                       R9 R8 K28 ["Content"]
      194 CALL                             R5 3 -1
      195 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Flags"]
       48 GETTABLEKS                       R7 R7 K14 ["getFFlagVirtualFileSystem"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["Components"]
       53 GETTABLEKS                       R7 R7 K2 ["Dialog"]
       55 GETTABLEKS                       R8 R2 K16 ["ContextServices"]
       57 GETTABLEKS                       R8 R8 K17 ["Localization"]
       59 GETTABLEKS                       R9 R4 K18 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       63 DUPCLOSURE                       R10 K20 [PROTO_2]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R1
       69 MOVE                             R12 R6
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+18]
       72 GETIMPORT                        R11 K23 [table.freeze]
       74 DUPTABLE                         R12 K26 [{"uri", "component"}]
       75 GETTABLEKS                       R13 R9 K27 ["fromWidget"]
       77 LOADK                            R14 K28 ["VirtualFileSystem"]
       78 LOADK                            R15 K29 ["PromptAccessPermission"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K24 ["uri"]
       82 GETTABLEKS                       R13 R3 K30 ["memo"]
       84 MOVE                             R14 R10
       85 CALL                             R13 1 1
       86 SETTABLEKS                       R13 R12 K25 ["component"]
       88 CALL                             R11 1 1
       89 RETURN                           R11 1
       90 LOADNIL                          R11
       91 RETURN                           R11 1
