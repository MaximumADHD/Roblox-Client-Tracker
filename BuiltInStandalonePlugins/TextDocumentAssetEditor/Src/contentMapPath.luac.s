PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETIMPORT                        R1 K2 [Content.none]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K3 ["SourceType"]
       10 GETIMPORT                        R2 K7 [Enum.ContentSourceType.Uri]
       12 JUMPIFEQ                         R1 R2 ; [+3]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K6 ["Uri"]
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K9 [type]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+10]
       25 LOADN                            R5 1
       26 LOADN                            R6 1
       27 NAMECALL                         R3 R1 K11 ["sub"]
       29 CALL                             R3 3 1
       30 JUMPIFNOTEQKS                    R3 K12 ["/"] ; [+3]
       32 MOVE                             R2 R1
       33 RETURN                           R2 1
       34 LOADNIL                          R2
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
