PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Select"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Setting"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Setting"]
        4 JUMPIF                           R2 ; [+12]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R4 K3 ["Missing Setting field for Spinbox with id %*"]
        8 GETTABLEKS                       R6 R1 K4 ["Id"]
       10 NAMECALL                         R4 R4 K5 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K6 ["toString"]
       20 GETTABLEKS                       R3 R1 K1 ["Setting"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R5 R0 K7 ["Items"]
       25 GETTABLEKS                       R4 R5 K8 ["Settings"]
       27 GETTABLE                         R3 R4 R2
       28 JUMPIF                           R3 ; [+13]
       29 GETTABLEKS                       R4 R0 K2 ["Warn"]
       31 LOADK                            R6 K9 ["Missing Setting %* for Spinbox with id %*"]
       32 MOVE                             R8 R2
       33 GETTABLEKS                       R9 R1 K4 ["Id"]
       35 NAMECALL                         R6 R6 K5 ["format"]
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 LOADNIL                          R4
       41 RETURN                           R4 1
       42 GETTABLEKS                       R5 R3 K10 ["Value"]
       44 FASTCALL1                        TYPEOF R5 ; [+2]
       45 GETIMPORT                        R4 K12 [typeof]
       47 CALL                             R4 1 1
       48 JUMPIFEQKS                       R4 K13 ["number"] ; [+16]
       50 GETTABLEKS                       R4 R0 K2 ["Warn"]
       52 LOADK                            R6 K14 ["Setting %* has an invalid value %* for Spinbox with id %*"]
       53 MOVE                             R8 R2
       54 GETTABLEKS                       R9 R3 K10 ["Value"]
       56 GETTABLEKS                       R10 R1 K4 ["Id"]
       58 NAMECALL                         R6 R6 K5 ["format"]
       60 CALL                             R6 4 1
       61 MOVE                             R5 R6
       62 CALL                             R4 1 0
       63 LOADNIL                          R4
       64 RETURN                           R4 1
       65 GETTABLEKS                       R4 R3 K15 ["Range"]
       67 JUMPIF                           R4 ; [+13]
       68 GETTABLEKS                       R5 R0 K2 ["Warn"]
       70 LOADK                            R7 K16 ["Setting %* has an invalid Range field for Spinbox with id %*"]
       71 MOVE                             R9 R2
       72 GETTABLEKS                       R10 R1 K4 ["Id"]
       74 NAMECALL                         R7 R7 K5 ["format"]
       76 CALL                             R7 3 1
       77 MOVE                             R6 R7
       78 CALL                             R5 1 0
       79 LOADNIL                          R5
       80 RETURN                           R5 1
       81 GETTABLEKS                       R6 R3 K17 ["Visible"]
       83 JUMPIFEQKNIL                     R6 ; [+5]
       85 GETTABLEKS                       R6 R3 K17 ["Visible"]
       87 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       89 LOADB                            R5 1
       90 JUMP                             ; [+1]
       91 LOADB                            R5 0
       92 GETTABLEKS                       R7 R3 K18 ["Enabled"]
       94 JUMPIFEQKNIL                     R7 ; [+5]
       96 GETTABLEKS                       R7 R3 K18 ["Enabled"]
       98 JUMPIFNOTEQKB                    R7 TRUE ; [+3]
      100 LOADB                            R6 1
      101 JUMP                             ; [+1]
      102 LOADB                            R6 0
      103 GETUPVAL                         R7 1
      104 GETUPVAL                         R8 2
      105 DUPTABLE                         R9 K30 [{"Uri", "Disabled", "Visible", "Increment", "LayoutOrder", "Maximum", "Minimum", "Precision", "Icon", "FormatStringKey", "Value", "IsShort", "OnValueChanged"}]
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R10 R11 K31 ["child"]
      109 GETTABLEKS                       R11 R0 K32 ["WidgetUri"]
      111 GETTABLEKS                       R12 R1 K4 ["Id"]
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K19 ["Uri"]
      116 NOT                              R10 R6
      117 SETTABLEKS                       R10 R9 K20 ["Disabled"]
      119 SETTABLEKS                       R5 R9 K17 ["Visible"]
      121 GETTABLEKS                       R10 R4 K21 ["Increment"]
      123 SETTABLEKS                       R10 R9 K21 ["Increment"]
      125 GETTABLEKS                       R10 R0 K22 ["LayoutOrder"]
      127 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      129 GETTABLEKS                       R11 R4 K23 ["Maximum"]
      131 ORK                              R10 R11 K33 [∞]
      132 SETTABLEKS                       R10 R9 K23 ["Maximum"]
      134 GETTABLEKS                       R11 R4 K24 ["Minimum"]
      136 ORK                              R10 R11 K34 [0]
      137 SETTABLEKS                       R10 R9 K24 ["Minimum"]
      139 GETTABLEKS                       R10 R4 K25 ["Precision"]
      141 SETTABLEKS                       R10 R9 K25 ["Precision"]
      143 GETTABLEKS                       R10 R1 K26 ["Icon"]
      145 JUMPIF                           R10 ; [+2]
      146 GETTABLEKS                       R10 R3 K26 ["Icon"]
      148 SETTABLEKS                       R10 R9 K26 ["Icon"]
      150 GETTABLEKS                       R10 R4 K27 ["FormatStringKey"]
      152 SETTABLEKS                       R10 R9 K27 ["FormatStringKey"]
      154 GETTABLEKS                       R10 R3 K10 ["Value"]
      156 SETTABLEKS                       R10 R9 K10 ["Value"]
      158 GETTABLEKS                       R10 R1 K28 ["IsShort"]
      160 SETTABLEKS                       R10 R9 K28 ["IsShort"]
      162 NEWCLOSURE                       R10 P0
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R1
      165 SETTABLEKS                       R10 R9 K29 ["OnValueChanged"]
      167 CALL                             R7 2 -1
      168 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Components"]
       33 GETTABLEKS                       R6 R7 K14 ["RibbonSpinbox"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R10 R0 K12 ["Src"]
       40 GETTABLEKS                       R9 R10 K13 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R8 K16 ["ControlProps"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Src"]
       51 GETTABLEKS                       R8 R9 K17 ["Types"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_1]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 RETURN                           R8 1
