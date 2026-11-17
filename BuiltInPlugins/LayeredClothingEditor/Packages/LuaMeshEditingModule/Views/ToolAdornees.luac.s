PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["controlPointAdornees"]
        3 GETTABLEKS                       R0 R0 K1 ["ControlPoints"]
        5 GETTABLEKS                       R0 R0 K2 ["Instance"]
        7 GETTABLEKS                       R0 R0 K3 ["AncestryChanged"]
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K0 ["controlPointAdornees"]
       17 GETTABLEKS                       R0 R0 K1 ["ControlPoints"]
       19 GETTABLEKS                       R0 R0 K2 ["Instance"]
       21 GETTABLEKS                       R0 R0 K5 ["ChildRemoved"]
       23 GETUPVAL                         R2 2
       24 NAMECALL                         R0 R0 K4 ["Connect"]
       26 CALL                             R0 2 1
       27 SETUPVAL                         R0 3
       28 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["controlPointAdornees"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["controlPointAdornees"]
        5 GETTABLEKS                       R2 R2 K1 ["ControlPoints"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETTABLEKS                       R2 R0 K0 ["controlPointAdornees"]
       10 GETTABLEKS                       R2 R2 K1 ["ControlPoints"]
       12 GETTABLEKS                       R2 R2 K2 ["Children"]
       14 JUMPIF                           R2 ; [+5]
       15 GETIMPORT                        R2 K4 [error]
       17 LOADK                            R3 K5 ["No Adornees exist."]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R0 K0 ["controlPointAdornees"]
       22 GETTABLEKS                       R2 R2 K1 ["ControlPoints"]
       24 GETTABLEKS                       R2 R2 K2 ["Children"]
       26 GETTABLE                         R3 R2 R1
       27 JUMPIFNOT                        R3 ; [+8]
       28 GETTABLE                         R3 R2 R1
       29 GETTABLEKS                       R3 R3 K6 ["Instance"]
       31 JUMPIFNOT                        R3 ; [+4]
       32 GETTABLE                         R3 R2 R1
       33 GETTABLEKS                       R3 R3 K6 ["Instance"]
       35 RETURN                           R3 1
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ToolAdorneesFolderName"]
        6 JUMPIFEQ                         R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["ToolAdorneesFolderName"]
       12 SETTABLEKS                       R1 R0 K0 ["Name"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["Name"]
       10 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["FolderChangedCallback"]
        3 SETUPVAL                         R2 0
        4 GETIMPORT                        R2 K2 [next]
        6 GETTABLEKS                       R3 R0 K3 ["controlPointAdornees"]
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+15]
       11 GETTABLEKS                       R2 R0 K3 ["controlPointAdornees"]
       13 GETTABLEKS                       R2 R2 K4 ["ControlPoints"]
       15 JUMPIFEQKNIL                     R2 ; [+9]
       17 GETTABLEKS                       R2 R0 K3 ["controlPointAdornees"]
       19 GETTABLEKS                       R2 R2 K4 ["ControlPoints"]
       21 GETTABLEKS                       R2 R2 K5 ["Instance"]
       23 JUMPIFNOTEQKNIL                  R2 ; [+69]
       25 GETIMPORT                        R2 K7 [Instance.new]
       27 LOADK                            R3 K8 ["Folder"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K10 [game]
       31 GETTABLEKS                       R3 R3 K11 ["Workspace"]
       33 SETTABLEKS                       R3 R2 K12 ["Parent"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K13 ["ToolAdorneesFolderName"]
       38 SETTABLEKS                       R3 R2 K14 ["Name"]
       40 LOADK                            R5 K14 ["Name"]
       41 NAMECALL                         R3 R2 K15 ["GetPropertyChangedSignal"]
       43 CALL                             R3 2 1
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U1
       47 NAMECALL                         R3 R3 K16 ["Connect"]
       49 CALL                             R3 2 0
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K17 ["Archivable"]
       53 DUPTABLE                         R3 K18 [{"ControlPoints"}]
       54 DUPTABLE                         R4 K20 [{"Instance", "Children"}]
       55 SETTABLEKS                       R2 R4 K5 ["Instance"]
       57 NEWTABLE                         R5 0 0
       59 SETTABLEKS                       R5 R4 K19 ["Children"]
       61 SETTABLEKS                       R4 R3 K4 ["ControlPoints"]
       63 SETTABLEKS                       R3 R0 K3 ["controlPointAdornees"]
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R3 R3 K3 ["controlPointAdornees"]
       68 GETTABLEKS                       R3 R3 K4 ["ControlPoints"]
       70 GETTABLEKS                       R3 R3 K5 ["Instance"]
       72 GETTABLEKS                       R3 R3 K21 ["AncestryChanged"]
       74 GETUPVAL                         R5 4
       75 NAMECALL                         R3 R3 K16 ["Connect"]
       77 CALL                             R3 2 1
       78 SETUPVAL                         R3 2
       79 GETUPVAL                         R3 3
       80 GETTABLEKS                       R3 R3 K3 ["controlPointAdornees"]
       82 GETTABLEKS                       R3 R3 K4 ["ControlPoints"]
       84 GETTABLEKS                       R3 R3 K5 ["Instance"]
       86 GETTABLEKS                       R3 R3 K22 ["ChildRemoved"]
       88 GETUPVAL                         R5 4
       89 NAMECALL                         R3 R3 K16 ["Connect"]
       91 CALL                             R3 2 1
       92 SETUPVAL                         R3 5
       93 GETTABLEKS                       R2 R0 K3 ["controlPointAdornees"]
       95 GETTABLEKS                       R2 R2 K4 ["ControlPoints"]
       97 GETTABLEKS                       R2 R2 K5 ["Instance"]
       99 GETTABLEKS                       R3 R0 K3 ["controlPointAdornees"]
      101 GETTABLEKS                       R3 R3 K4 ["ControlPoints"]
      103 GETTABLEKS                       R3 R3 K19 ["Children"]
      105 GETIMPORT                        R4 K24 [pairs]
      107 GETTABLEKS                       R5 R0 K25 ["meshNames"]
      109 CALL                             R4 1 3
      110 FORGPREP_NEXT                    R4
      111 GETTABLEKS                       R9 R0 K26 ["context"]
      113 MOVE                             R11 R8
      114 NAMECALL                         R9 R9 K27 ["getMeshOrigin"]
      116 CALL                             R9 2 1
      117 GETTABLE                         R10 R3 R8
      118 JUMPIFNOT                        R10 ; [+3]
      119 GETTABLEKS                       R11 R10 K5 ["Instance"]
      121 JUMPIF                           R11 ; [+33]
      122 GETIMPORT                        R11 K7 [Instance.new]
      124 LOADK                            R12 K28 ["Part"]
      125 MOVE                             R13 R2
      126 CALL                             R11 2 1
      127 MOVE                             R10 R11
      128 SETTABLEKS                       R8 R10 K14 ["Name"]
      130 LOADK                            R13 K14 ["Name"]
      131 NAMECALL                         R11 R10 K15 ["GetPropertyChangedSignal"]
      133 CALL                             R11 2 1
      134 NEWCLOSURE                       R13 P1
      135 CAPTURE                          REF R10
      136 CAPTURE                          VAL R8
      137 NAMECALL                         R11 R11 K16 ["Connect"]
      139 CALL                             R11 2 0
      140 SETTABLEKS                       R9 R10 K29 ["CFrame"]
      142 LOADN                            R11 1
      143 SETTABLEKS                       R11 R10 K30 ["Transparency"]
      145 LOADB                            R11 0
      146 SETTABLEKS                       R11 R10 K31 ["CanCollide"]
      148 LOADB                            R11 0
      149 SETTABLEKS                       R11 R10 K17 ["Archivable"]
      151 DUPTABLE                         R11 K32 [{"Instance"}]
      152 SETTABLEKS                       R10 R11 K5 ["Instance"]
      154 SETTABLE                         R11 R3 R8
      155 CLOSEUPVALS                      R10
      156 FORGLOOP                         R4 2 ; [-46]
      158 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K0 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["disconnect"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["controlPointAdornees"]
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETTABLEKS                       R1 R0 K1 ["controlPointAdornees"]
        8 GETTABLEKS                       R1 R1 K2 ["ControlPoints"]
       10 JUMPIFNOT                        R1 ; [+21]
       11 GETTABLEKS                       R1 R0 K1 ["controlPointAdornees"]
       13 GETTABLEKS                       R1 R1 K2 ["ControlPoints"]
       15 GETTABLEKS                       R1 R1 K3 ["Instance"]
       17 JUMPIFNOT                        R1 ; [+3]
       18 NAMECALL                         R2 R1 K4 ["Destroy"]
       20 CALL                             R2 1 0
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R0 K1 ["controlPointAdornees"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R0 K5 ["meshNames"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K6 ["context"]
       32 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          REF R4
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          REF R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R5
       17 CAPTURE                          REF R3
       18 NEWTABLE                         R7 0 0
       20 SETTABLEKS                       R7 R1 K2 ["controlPointAdornees"]
       22 GETUPVAL                         R7 1
       23 NAMECALL                         R8 R0 K3 ["getVertexData"]
       25 CALL                             R8 1 -1
       26 CALL                             R7 -1 1
       27 SETTABLEKS                       R7 R1 K4 ["meshNames"]
       29 SETTABLEKS                       R0 R1 K5 ["context"]
       31 DUPCLOSURE                       R7 K6 [PROTO_2]
       32 SETTABLEKS                       R7 R1 K7 ["getAdornee"]
       34 NEWCLOSURE                       R7 P3
       35 CAPTURE                          REF R4
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 CAPTURE                          REF R3
       41 SETTABLEKS                       R7 R1 K8 ["render"]
       43 NEWCLOSURE                       R7 P4
       44 CAPTURE                          REF R2
       45 CAPTURE                          REF R3
       46 SETTABLEKS                       R7 R1 K9 ["disconnect"]
       48 DUPCLOSURE                       R7 K10 [PROTO_7]
       49 SETTABLEKS                       R7 R1 K11 ["cleanup"]
       51 CLOSEUPVALS                      R2
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["keys"]
       16 GETTABLEKS                       R4 R0 K7 ["Util"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R4 K8 ["Constants"]
       22 CALL                             R5 1 1
       23 NEWTABLE                         R6 2 0
       25 SETTABLEKS                       R6 R6 K9 ["__index"]
       27 DUPCLOSURE                       R7 K10 [PROTO_8]
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R5
       31 SETTABLEKS                       R7 R6 K11 ["new"]
       33 RETURN                           R6 1
