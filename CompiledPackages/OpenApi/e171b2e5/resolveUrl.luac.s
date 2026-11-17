PROTO_0:
        0 GETIMPORT                        R4 K2 [string.match]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K3 ["^%a[%w+.-]*://"]
        4 CALL                             R4 2 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       11 LOADK                            R4 K4 ["baseUrl must be an absolute URL"]
       12 GETIMPORT                        R2 K6 [assert]
       14 CALL                             R2 2 0
       15 GETIMPORT                        R2 K8 [string.gsub]
       17 MOVE                             R3 R0
       18 LOADK                            R4 K9 ["/+$"]
       19 LOADK                            R5 K10 [""]
       20 CALL                             R2 3 1
       21 LOADN                            R6 1
       22 LOADN                            R7 1
       23 FASTCALL3                        STRING_SUB R1 R6 R7
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K12 [string.sub]
       28 CALL                             R4 3 1
       29 JUMPIFNOTEQKS                    R4 K13 ["/"] ; [+8]
       31 LOADK                            R3 K14 ["%*%*"]
       32 MOVE                             R5 R2
       33 MOVE                             R6 R1
       34 NAMECALL                         R3 R3 K15 ["format"]
       36 CALL                             R3 3 1
       37 RETURN                           R3 1
       38 LOADK                            R3 K16 ["%*/%*"]
       39 MOVE                             R5 R2
       40 MOVE                             R6 R1
       41 NAMECALL                         R3 R3 K15 ["format"]
       43 CALL                             R3 3 1
       44 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
