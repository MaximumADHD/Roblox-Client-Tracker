PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["([^#]*)"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R4 K2 [string.match]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K3 ["([^#]*)"]
        4 CALL                             R4 2 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+3]
        7 MOVE                             R3 R0
        8 JUMP                             ; [+1]
        9 MOVE                             R3 R4
       10 GETTABLEKS                       R4 R1 K4 ["validateResourceURL"]
       12 JUMPIFNOT                        R4 ; [+9]
       13 GETTABLEKS                       R4 R1 K4 ["validateResourceURL"]
       15 MOVE                             R5 R3
       16 MOVE                             R6 R2
       17 JUMPIFNOT                        R6 ; [+2]
       18 GETTABLEKS                       R6 R2 K5 ["resource"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1
       22 MOVE                             R4 R2
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETTABLEKS                       R4 R2 K5 ["resource"]
       26 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"headers"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["headers"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+9]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R0
       11 LOADNIL                          R7
       12 MOVE                             R8 R2
       13 CALL                             R5 3 -1
       14 RETURN                           R5 -1
       15 LOADNIL                          R5
       16 RETURN                           R5 1
       17 RETURN                           R4 1

PROTO_4:
        0 ORK                              R1 R1 K0 [""]
        1 MOVE                             R3 R2
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R2 R3
        6 FASTCALL2K                       STRING_SUB R1 K1 ; [+5]
        8 MOVE                             R4 R1
        9 LOADK                            R5 K1 [-1]
       10 GETIMPORT                        R3 K4 [string.sub]
       12 CALL                             R3 2 1
       13 JUMPIFNOTEQKS                    R3 K5 ["/"] ; [+10]
       15 LOADN                            R5 1
       16 LOADN                            R6 -2
       17 FASTCALL3                        STRING_SUB R1 R5 R6
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K4 [string.sub]
       22 CALL                             R3 3 1
       23 MOVE                             R1 R3
       24 JUMPIFNOT                        R2 ; [+11]
       25 GETTABLEKS                       R3 R2 K6 ["prependPathname"]
       27 JUMPIFNOT                        R3 ; [+8]
       28 LOADK                            R4 K7 ["%*/.well-known/%*"]
       29 MOVE                             R6 R1
       30 MOVE                             R7 R0
       31 NAMECALL                         R4 R4 K8 ["format"]
       33 CALL                             R4 3 1
       34 MOVE                             R3 R4
       35 RETURN                           R3 1
       36 LOADK                            R4 K9 ["/.well-known/%*%*"]
       37 MOVE                             R6 R0
       38 MOVE                             R7 R1
       39 NAMECALL                         R4 R4 K8 ["format"]
       41 CALL                             R4 3 1
       42 MOVE                             R3 R4
       43 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R3 1 0
        2 SETTABLEKS                       R1 R3 K0 ["MCP-Protocol-Version"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R0
        6 MOVE                             R6 R3
        7 MOVE                             R7 R2
        8 CALL                             R4 3 -1
        9 RETURN                           R4 -1

PROTO_6:
        0 NOT                              R2 R0
        1 JUMPIF                           R2 ; [+16]
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R0 K0 ["status"]
        5 LOADN                            R4 400
        6 JUMPIFNOTLE                      R4 R3 ; [+11]
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R0 K0 ["status"]
       11 LOADN                            R4 500
       12 JUMPIFNOTLT                      R3 R4 ; [+5]
       14 JUMPIFNOTEQKS                    R1 K1 ["/"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_7:
        0 JUMPIFNOT                        R3 ; [+3]
        1 GETTABLEKS                       R4 R3 K0 ["protocolVersion"]
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["LATEST_PROTOCOL_VERSION"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["extractOrigin"]
       10 MOVE                             R6 R0
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["extractPathname"]
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 LOADNIL                          R7
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETTABLEKS                       R8 R3 K4 ["metadataUrl"]
       21 JUMPIFNOT                        R8 ; [+3]
       22 GETTABLEKS                       R7 R3 K4 ["metadataUrl"]
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R8 2
       26 MOVE                             R9 R1
       27 MOVE                             R10 R6
       28 CALL                             R8 2 1
       29 MOVE                             R9 R5
       30 MOVE                             R10 R8
       31 CONCAT                           R7 R9 R10
       32 MOVE                             R9 R7
       33 NEWTABLE                         R10 1 0
       35 SETTABLEKS                       R4 R10 K5 ["MCP-Protocol-Version"]
       37 GETIMPORT                        R11 K7 [pcall]
       39 NEWCLOSURE                       R12 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R10
       43 CALL                             R11 1 2
       44 JUMPIF                           R11 ; [+10]
       45 JUMPIFNOT                        R10 ; [+7]
       46 GETUPVAL                         R13 3
       47 MOVE                             R14 R9
       48 LOADNIL                          R15
       49 MOVE                             R16 R2
       50 CALL                             R13 3 1
       51 MOVE                             R8 R13
       52 JUMP                             ; [+3]
       53 LOADNIL                          R8
       54 JUMP                             ; [+1]
       55 MOVE                             R8 R12
       56 JUMPIFNOT                        R3 ; [+3]
       57 GETTABLEKS                       R9 R3 K4 ["metadataUrl"]
       59 JUMPIF                           R9 ; [+50]
       60 MOVE                             R10 R8
       61 NOT                              R9 R10
       62 JUMPIF                           R9 ; [+16]
       63 LOADB                            R9 0
       64 GETTABLEKS                       R11 R10 K8 ["status"]
       66 LOADN                            R12 400
       67 JUMPIFNOTLE                      R12 R11 ; [+11]
       69 LOADB                            R9 0
       70 GETTABLEKS                       R11 R10 K8 ["status"]
       72 LOADN                            R12 500
       73 JUMPIFNOTLT                      R11 R12 ; [+5]
       75 JUMPIFNOTEQKS                    R6 K9 ["/"] ; [+2]
       77 LOADB                            R9 0 +1
       78 LOADB                            R9 1
       79 JUMPIFNOT                        R9 ; [+30]
       80 LOADK                            R10 K10 ["%*/.well-known/%*"]
       81 MOVE                             R12 R0
       82 MOVE                             R13 R1
       83 NAMECALL                         R10 R10 K11 ["format"]
       85 CALL                             R10 3 1
       86 MOVE                             R9 R10
       87 NEWTABLE                         R10 1 0
       89 SETTABLEKS                       R4 R10 K5 ["MCP-Protocol-Version"]
       91 GETIMPORT                        R11 K7 [pcall]
       93 NEWCLOSURE                       R12 P0
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CALL                             R11 1 2
       98 JUMPIF                           R11 ; [+10]
       99 JUMPIFNOT                        R10 ; [+7]
      100 GETUPVAL                         R13 3
      101 MOVE                             R14 R9
      102 LOADNIL                          R15
      103 MOVE                             R16 R2
      104 CALL                             R13 3 1
      105 MOVE                             R8 R13
      106 RETURN                           R8 1
      107 LOADNIL                          R8
      108 RETURN                           R8 1
      109 MOVE                             R8 R12
      110 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["oauth-protected-resource"]
        3 MOVE                             R6 R1
        4 DUPTABLE                         R7 K3 [{"protocolVersion", "metadataUrl"}]
        5 MOVE                             R8 R2
        6 JUMPIFNOT                        R8 ; [+2]
        7 GETTABLEKS                       R8 R2 K1 ["protocolVersion"]
        9 SETTABLEKS                       R8 R7 K1 ["protocolVersion"]
       11 MOVE                             R8 R2
       12 JUMPIFNOT                        R8 ; [+2]
       13 GETTABLEKS                       R8 R2 K4 ["resourceMetadataUrl"]
       15 SETTABLEKS                       R8 R7 K2 ["metadataUrl"]
       17 CALL                             R3 4 1
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETTABLEKS                       R4 R3 K5 ["status"]
       21 JUMPIFNOTEQKN                    R4 K6 [404] ; [+5]
       23 GETIMPORT                        R4 K8 [error]
       25 LOADK                            R5 K9 ["Resource server does not implement OAuth 2.0 Protected Resource Metadata."]
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R4 R3 K10 ["ok"]
       29 JUMPIF                           R4 ; [+10]
       30 GETIMPORT                        R4 K8 [error]
       32 LOADK                            R6 K11 ["HTTP %* failed to load well-known OAuth protected resource metadata."]
       33 GETTABLEKS                       R8 R3 K5 ["status"]
       35 NAMECALL                         R6 R6 K12 ["format"]
       37 CALL                             R6 2 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 NAMECALL                         R4 R3 K13 ["getJson"]
       42 CALL                             R4 1 -1
       43 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["extractPathname"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K1 ["/"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["extractOrigin"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 JUMPIF                           R1 ; [+31]
       17 DUPTABLE                         R6 K6 [{["url"], ["endpointType"] = "oauth"}]
       18 LOADK                            R8 K7 ["%*/.well-known/oauth-authorization-server"]
       19 MOVE                             R10 R3
       20 NAMECALL                         R8 R8 K8 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 SETTABLEKS                       R7 R6 K3 ["url"]
       26 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R4 K11 [table.insert]
       31 CALL                             R4 2 0
       32 DUPTABLE                         R6 K13 [{["url"], ["endpointType"] = "oidc"}]
       33 LOADK                            R8 K14 ["%*/.well-known/openid-configuration"]
       34 MOVE                             R10 R3
       35 NAMECALL                         R8 R8 K8 ["format"]
       37 CALL                             R8 2 1
       38 MOVE                             R7 R8
       39 SETTABLEKS                       R7 R6 K3 ["url"]
       41 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       43 MOVE                             R5 R2
       44 GETIMPORT                        R4 K11 [table.insert]
       46 CALL                             R4 2 0
       47 RETURN                           R2 1
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K0 ["extractPathname"]
       51 MOVE                             R5 R0
       52 CALL                             R4 1 1
       53 FASTCALL2K                       STRING_SUB R4 K15 ; [+5]
       55 MOVE                             R6 R4
       56 LOADK                            R7 K15 [-1]
       57 GETIMPORT                        R5 K18 [string.sub]
       59 CALL                             R5 2 1
       60 JUMPIFNOTEQKS                    R5 K1 ["/"] ; [+10]
       62 LOADN                            R7 1
       63 LOADN                            R8 -2
       64 FASTCALL3                        STRING_SUB R4 R7 R8
       66 MOVE                             R6 R4
       67 GETIMPORT                        R5 K18 [string.sub]
       69 CALL                             R5 3 1
       70 MOVE                             R4 R5
       71 DUPTABLE                         R7 K6 [{["url"], ["endpointType"] = "oauth"}]
       72 LOADK                            R9 K19 ["%*/.well-known/oauth-authorization-server%*"]
       73 MOVE                             R11 R3
       74 MOVE                             R12 R4
       75 NAMECALL                         R9 R9 K8 ["format"]
       77 CALL                             R9 3 1
       78 MOVE                             R8 R9
       79 SETTABLEKS                       R8 R7 K3 ["url"]
       81 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       83 MOVE                             R6 R2
       84 GETIMPORT                        R5 K11 [table.insert]
       86 CALL                             R5 2 0
       87 DUPTABLE                         R7 K6 [{["url"], ["endpointType"] = "oauth"}]
       88 LOADK                            R9 K7 ["%*/.well-known/oauth-authorization-server"]
       89 MOVE                             R11 R3
       90 NAMECALL                         R9 R9 K8 ["format"]
       92 CALL                             R9 2 1
       93 MOVE                             R8 R9
       94 SETTABLEKS                       R8 R7 K3 ["url"]
       96 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       98 MOVE                             R6 R2
       99 GETIMPORT                        R5 K11 [table.insert]
      101 CALL                             R5 2 0
      102 DUPTABLE                         R7 K13 [{["url"], ["endpointType"] = "oidc"}]
      103 LOADK                            R9 K20 ["%*/.well-known/openid-configuration%*"]
      104 MOVE                             R11 R3
      105 MOVE                             R12 R4
      106 NAMECALL                         R9 R9 K8 ["format"]
      108 CALL                             R9 3 1
      109 MOVE                             R8 R9
      110 SETTABLEKS                       R8 R7 K3 ["url"]
      112 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
      114 MOVE                             R6 R2
      115 GETIMPORT                        R5 K11 [table.insert]
      117 CALL                             R5 2 0
      118 DUPTABLE                         R7 K13 [{["url"], ["endpointType"] = "oidc"}]
      119 LOADK                            R9 K21 ["%*%*/.well-known/openid-configuration"]
      120 MOVE                             R11 R3
      121 MOVE                             R12 R4
      122 NAMECALL                         R9 R9 K8 ["format"]
      124 CALL                             R9 3 1
      125 MOVE                             R8 R9
      126 SETTABLEKS                       R8 R7 K3 ["url"]
      128 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
      130 MOVE                             R6 R2
      131 GETIMPORT                        R5 K11 [table.insert]
      133 CALL                             R5 2 0
      134 RETURN                           R2 1

PROTO_10:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R2 K0 ["protocolVersion"]
        8 JUMPIF                           R3 ; [+3]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["LATEST_PROTOCOL_VERSION"]
       12 NEWTABLE                         R4 1 0
       14 SETTABLEKS                       R3 R4 K2 ["MCP-Protocol-Version"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 MOVE                             R6 R5
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETTABLEKS                       R11 R10 K3 ["url"]
       25 GETTABLEKS                       R12 R10 K4 ["endpointType"]
       27 GETIMPORT                        R14 K6 [pcall]
       29 NEWCLOSURE                       R15 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R11
       32 CAPTURE                          VAL R4
       33 CALL                             R14 1 2
       34 JUMPIF                           R14 ; [+10]
       35 JUMPIFNOT                        R4 ; [+7]
       36 GETUPVAL                         R16 2
       37 MOVE                             R17 R11
       38 LOADNIL                          R18
       39 MOVE                             R19 R1
       40 CALL                             R16 3 1
       41 MOVE                             R13 R16
       42 JUMP                             ; [+3]
       43 LOADNIL                          R13
       44 JUMP                             ; [+1]
       45 MOVE                             R13 R15
       46 JUMPIFNOT                        R13 ; [+60]
       47 GETTABLEKS                       R14 R13 K7 ["ok"]
       49 JUMPIF                           R14 ; [+26]
       50 GETTABLEKS                       R14 R13 K8 ["status"]
       52 LOADN                            R15 400
       53 JUMPIFNOTLE                      R15 R14 ; [+6]
       55 GETTABLEKS                       R14 R13 K8 ["status"]
       57 LOADN                            R15 500
       58 JUMPIFLT                         R14 R15 ; [+48]
       60 GETIMPORT                        R14 K10 [error]
       62 LOADK                            R16 K11 ["HTTP %* failed to load %* metadata from %*"]
       63 GETTABLEKS                       R18 R13 K8 ["status"]
       65 JUMPIFNOTEQKS                    R12 K12 ["oauth"] ; [+3]
       67 LOADK                            R19 K13 ["OAuth"]
       68 JUMP                             ; [+1]
       69 LOADK                            R19 K14 ["OpenID provider"]
       70 MOVE                             R20 R11
       71 NAMECALL                         R16 R16 K15 ["format"]
       73 CALL                             R16 4 1
       74 MOVE                             R15 R16
       75 CALL                             R14 1 0
       76 JUMPIFNOTEQKS                    R12 K12 ["oauth"] ; [+5]
       78 NAMECALL                         R14 R13 K16 ["getJson"]
       80 CALL                             R14 1 -1
       81 RETURN                           R14 -1
       82 JUMPIFNOTEQKS                    R12 K17 ["oidc"] ; [+24]
       84 NAMECALL                         R14 R13 K16 ["getJson"]
       86 CALL                             R14 1 1
       87 GETTABLEKS                       R15 R14 K18 ["code_challenge_methods_supported"]
       89 JUMPIFNOT                        R15 ; [+7]
       90 GETIMPORT                        R15 K21 [table.find]
       92 GETTABLEKS                       R16 R14 K18 ["code_challenge_methods_supported"]
       94 LOADK                            R17 K22 ["S256"]
       95 CALL                             R15 2 1
       96 JUMPIF                           R15 ; [+9]
       97 GETIMPORT                        R15 K10 [error]
       99 LOADK                            R17 K23 ["Incompatible OIDC provider at %*: does not support S256 code challenge method required by MCP specification"]
      100 MOVE                             R19 R11
      101 NAMECALL                         R17 R17 K15 ["format"]
      103 CALL                             R17 2 1
      104 MOVE                             R16 R17
      105 CALL                             R15 1 0
      106 RETURN                           R14 1
      107 FORGLOOP                         R6 2 ; [-85]
      109 LOADNIL                          R6
      110 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AuthCommon"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K3 [script]
       12 LOADK                            R3 K6 ["ModelContextProtocol"]
       13 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       15 CALL                             R1 2 1
       16 GETIMPORT                        R2 K1 [require]
       18 GETTABLEKS                       R3 R1 K8 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_1]
       23 DUPCLOSURE                       R5 K11 [PROTO_3]
       24 CAPTURE                          VAL R5
       25 DUPCLOSURE                       R6 K12 [PROTO_4]
       26 DUPCLOSURE                       R7 K13 [PROTO_5]
       27 CAPTURE                          VAL R5
       28 DUPCLOSURE                       R8 K14 [PROTO_6]
       29 DUPCLOSURE                       R9 K15 [PROTO_7]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R5
       34 DUPCLOSURE                       R10 K16 [PROTO_8]
       35 CAPTURE                          VAL R9
       36 DUPCLOSURE                       R11 K17 [PROTO_9]
       37 CAPTURE                          VAL R0
       38 DUPCLOSURE                       R12 K18 [PROTO_10]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R11
       41 CAPTURE                          VAL R5
       42 DUPTABLE                         R13 K22 [{"selectResourceURL", "discoverOAuthProtectedResourceMetadata", "discoverAuthorizationServerMetadata"}]
       43 SETTABLEKS                       R4 R13 K19 ["selectResourceURL"]
       45 SETTABLEKS                       R10 R13 K20 ["discoverOAuthProtectedResourceMetadata"]
       47 SETTABLEKS                       R12 R13 K21 ["discoverAuthorizationServerMetadata"]
       49 RETURN                           R13 1
