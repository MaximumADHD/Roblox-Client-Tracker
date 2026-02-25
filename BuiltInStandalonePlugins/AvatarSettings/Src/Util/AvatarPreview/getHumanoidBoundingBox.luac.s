PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["RigType"]
        2 GETIMPORT                        R3 K4 [Enum.HumanoidRigType.R6]
        4 JUMPIFNOTEQ                      R2 R3 ; [+28]
        6 JUMPIF                           R1 ; [+15]
        7 GETTABLEKS                       R2 R0 K5 ["Parent"]
        9 MOVE                             R4 R2
       10 JUMPIFNOT                        R4 ; [+4]
       11 LOADK                            R6 K6 ["Model"]
       12 NAMECALL                         R4 R2 K7 ["IsA"]
       14 CALL                             R4 2 1
       15 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       17 LOADK                            R5 K8 ["R6 Humanoid must have a parent model for boundingBox calculation"]
       18 GETIMPORT                        R3 K10 [assert]
       20 CALL                             R3 2 0
       21 MOVE                             R1 R2
       22 FASTCALL2K                       ASSERT R1 K11 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K11 ["Model must be provided for R6 Humanoid bounding box calculation"]
       26 GETIMPORT                        R2 K10 [assert]
       28 CALL                             R2 2 0
       29 NAMECALL                         R2 R1 K12 ["GetBoundingBox"]
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1
       33 NAMECALL                         R2 R0 K13 ["ComputeR15BodyBoundingBox"]
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
