PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Generator"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["Generator"]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K1 ["Capabilities"]
       10 GETTABLEKS                       R1 R0 K0 ["Generator"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K2 ["Sandboxed"]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["FFlagToolboxSandboxProceduralModels was not on"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 LOADK                            R8 K3 ["ProceduralModel"]
       12 NAMECALL                         R6 R5 K4 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+15]
       16 GETTABLEKS                       R6 R5 K5 ["Generator"]
       18 JUMPIFNOTEQKNIL                  R6 ; [+2]
       20 JUMP                             ; [+10]
       21 GETTABLEKS                       R6 R5 K5 ["Generator"]
       23 GETUPVAL                         R7 1
       24 SETTABLEKS                       R7 R6 K6 ["Capabilities"]
       26 GETTABLEKS                       R6 R5 K5 ["Generator"]
       28 LOADB                            R7 1
       29 SETTABLEKS                       R7 R6 K7 ["Sandboxed"]
       31 LOADK                            R8 K3 ["ProceduralModel"]
       32 NAMECALL                         R6 R5 K8 ["QueryDescendants"]
       34 CALL                             R6 2 3
       35 FORGPREP                         R6
       36 GETTABLEKS                       R11 R10 K5 ["Generator"]
       38 JUMPIFNOTEQKNIL                  R11 ; [+2]
       40 JUMP                             ; [+10]
       41 GETTABLEKS                       R11 R10 K5 ["Generator"]
       43 GETUPVAL                         R12 1
       44 SETTABLEKS                       R12 R11 K6 ["Capabilities"]
       46 GETTABLEKS                       R11 R10 K5 ["Generator"]
       48 LOADB                            R12 1
       49 SETTABLEKS                       R12 R11 K7 ["Sandboxed"]
       51 FORGLOOP                         R6 2 ; [-16]
       53 FORGLOOP                         R1 2 ; [-43]
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["SharedFlags"]
       15 GETTABLEKS                       R2 R2 K9 ["getFFlagToolboxSandboxProceduralModels"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 CALL                             R2 0 1
       20 GETIMPORT                        R3 K12 [SecurityCapabilities.new]
       22 GETIMPORT                        R4 K16 [Enum.SecurityCapability.Animation]
       24 GETIMPORT                        R5 K18 [Enum.SecurityCapability.AvatarBehavior]
       26 GETIMPORT                        R6 K20 [Enum.SecurityCapability.Audio]
       28 GETIMPORT                        R7 K22 [Enum.SecurityCapability.Avatar]
       30 GETIMPORT                        R8 K24 [Enum.SecurityCapability.Basic]
       32 GETIMPORT                        R9 K26 [Enum.SecurityCapability.CreateInstances]
       34 GETIMPORT                        R10 K28 [Enum.SecurityCapability.CSG]
       36 GETIMPORT                        R11 K30 [Enum.SecurityCapability.DynamicGeneration]
       38 GETIMPORT                        R12 K32 [Enum.SecurityCapability.Logging]
       40 GETIMPORT                        R13 K34 [Enum.SecurityCapability.Input]
       42 GETIMPORT                        R14 K36 [Enum.SecurityCapability.LegacySound]
       44 GETIMPORT                        R15 K38 [Enum.SecurityCapability.Material]
       46 GETIMPORT                        R16 K40 [Enum.SecurityCapability.Physics]
       48 GETIMPORT                        R17 K42 [Enum.SecurityCapability.RunClientScript]
       50 GETIMPORT                        R18 K44 [Enum.SecurityCapability.RunServerScript]
       52 GETIMPORT                        R19 K46 [Enum.SecurityCapability.UI]
       54 CALL                             R3 16 1
       55 DUPCLOSURE                       R4 K47 [PROTO_0]
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R5 K48 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 RETURN                           R5 1
