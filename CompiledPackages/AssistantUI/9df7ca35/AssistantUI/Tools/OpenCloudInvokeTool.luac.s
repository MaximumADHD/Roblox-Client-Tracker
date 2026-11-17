PROTO_0:
        0 GETIMPORT                        R2 K3 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K4 ["[^/\\]+$"]
        4 CALL                             R2 2 1
        5 ORK                              R1 R2 K0 ["file"]
        6 GETIMPORT                        R2 K6 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K7 ["[%c\"\\]"]
       10 LOADK                            R5 K8 ["_"]
       11 CALL                             R2 3 1
       12 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKN                    R0 K0 [401] ; [+3]
        2 LOADK                            R1 K1 ["The access token was rejected. Retry the request to mint a fresh token."]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKN                    R0 K2 [403] ; [+3]
        6 LOADK                            R1 K3 ["The token lacks permission for this endpoint. Pass the endpoint's scopes in `scopes` to see which one is missing. Ask the creator to grant the required scope in the Assistant MCP Permissions settings, then retry."]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+4]
        7 LENGTH                           R1 R0
        8 JUMPIFNOTEQKN                    R1 K3 [0] ; [+4]
       10 LOADNIL                          R1
       11 LOADK                            R2 K4 ["files must be a non-empty array of { name, path } objects"]
       12 RETURN                           R1 2
       13 LENGTH                           R1 R0
       14 LOADN                            R2 5
       15 JUMPIFNOTLT                      R2 R1 ; [+8]
       17 LOADNIL                          R1
       18 LOADK                            R2 K5 ["files accepts at most %* files per request"]
       19 LOADN                            R4 5
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 1
       23 RETURN                           R1 2
       24 NEWTABLE                         R1 0 0
       26 LOADN                            R4 1
       27 LENGTH                           R2 R0
       28 LOADN                            R3 1
       29 FORNPREP                         R2
       30 GETTABLE                         R5 R0 R4
       31 FASTCALL1                        TYPE R5 ; [+3]
       32 MOVE                             R7 R5
       33 GETIMPORT                        R6 K1 [type]
       35 CALL                             R6 1 1
       36 JUMPIFEQKS                       R6 K2 ["table"] ; [+8]
       38 LOADNIL                          R6
       39 LOADK                            R7 K7 ["files[%*] must be an object with name and path"]
       40 MOVE                             R9 R4
       41 NAMECALL                         R7 R7 K6 ["format"]
       43 CALL                             R7 2 1
       44 RETURN                           R6 2
       45 GETTABLEKS                       R6 R5 K8 ["name"]
       47 GETTABLEKS                       R7 R5 K9 ["path"]
       49 GETTABLEKS                       R8 R5 K10 ["contentType"]
       51 FASTCALL1                        TYPE R6 ; [+3]
       52 MOVE                             R10 R6
       53 GETIMPORT                        R9 K1 [type]
       55 CALL                             R9 1 1
       56 JUMPIFNOTEQKS                    R9 K11 ["string"] ; [+7]
       58 GETIMPORT                        R9 K13 [string.match]
       60 MOVE                             R10 R6
       61 LOADK                            R11 K14 ["^[%w_%-%.]+$"]
       62 CALL                             R9 2 1
       63 JUMPIF                           R9 ; [+7]
       64 LOADNIL                          R9
       65 LOADK                            R10 K15 ["files[%*].name must be a form field name such as \"fileContent\""]
       66 MOVE                             R12 R4
       67 NAMECALL                         R10 R10 K6 ["format"]
       69 CALL                             R10 2 1
       70 RETURN                           R9 2
       71 FASTCALL1                        TYPE R7 ; [+3]
       72 MOVE                             R10 R7
       73 GETIMPORT                        R9 K1 [type]
       75 CALL                             R9 1 1
       76 JUMPIFNOTEQKS                    R9 K11 ["string"] ; [+13]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K16 ["isAbsolute"]
       81 MOVE                             R10 R7
       82 CALL                             R9 1 1
       83 JUMPIFNOT                        R9 ; [+6]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K17 ["hasRelativeSegment"]
       87 MOVE                             R10 R7
       88 CALL                             R9 1 1
       89 JUMPIFNOT                        R9 ; [+7]
       90 LOADNIL                          R9
       91 LOADK                            R10 K18 ["files[%*].path must be an absolute local file path without '.' or '..' segments"]
       92 MOVE                             R12 R4
       93 NAMECALL                         R10 R10 K6 ["format"]
       95 CALL                             R10 2 1
       96 RETURN                           R9 2
       97 GETIMPORT                        R9 K20 [string.lower]
       99 GETIMPORT                        R11 K13 [string.match]
      101 MOVE                             R12 R7
      102 LOADK                            R13 K22 ["%.([^%./\\]+)$"]
      103 CALL                             R11 2 1
      104 ORK                              R10 R11 K21 [""]
      105 CALL                             R9 1 1
      106 GETUPVAL                         R11 1
      107 GETTABLE                         R10 R11 R9
      108 JUMPIF                           R10 ; [+12]
      109 LOADNIL                          R11
      110 LOADK                            R12 K23 ["files[%*].path must be an asset file with one of these extensions: %*"]
      111 MOVE                             R14 R4
      112 GETIMPORT                        R15 K25 [table.concat]
      114 GETUPVAL                         R16 2
      115 LOADK                            R17 K26 [", "]
      116 CALL                             R15 2 1
      117 NAMECALL                         R12 R12 K6 ["format"]
      119 CALL                             R12 3 1
      120 RETURN                           R11 2
      121 JUMPIFEQKNIL                     R8 ; [+22]
      123 FASTCALL1                        TYPE R8 ; [+3]
      124 MOVE                             R12 R8
      125 GETIMPORT                        R11 K1 [type]
      127 CALL                             R11 1 1
      128 JUMPIFNOTEQKS                    R11 K11 ["string"] ; [+7]
      130 GETIMPORT                        R11 K13 [string.match]
      132 MOVE                             R12 R8
      133 LOADK                            R13 K27 ["^[%w%-%.%+]+/[%w%-%.%+]+$"]
      134 CALL                             R11 2 1
      135 JUMPIF                           R11 ; [+8]
      136 LOADNIL                          R11
      137 LOADK                            R12 K28 ["files[%*].contentType must be a MIME type such as \"%*\""]
      138 MOVE                             R14 R4
      139 MOVE                             R15 R10
      140 NAMECALL                         R12 R12 K6 ["format"]
      142 CALL                             R12 3 1
      143 RETURN                           R11 2
      144 DUPTABLE                         R13 K29 [{"name", "path", "contentType"}]
      145 SETTABLEKS                       R6 R13 K8 ["name"]
      147 SETTABLEKS                       R7 R13 K9 ["path"]
      149 OR                               R14 R8 R10
      150 SETTABLEKS                       R14 R13 K10 ["contentType"]
      152 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      154 MOVE                             R12 R1
      155 GETIMPORT                        R11 K31 [table.insert]
      157 CALL                             R11 2 0
      158 FORNLOOP                         R2
      159 MOVE                             R2 R1
      160 LOADNIL                          R3
      161 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["apisUrl"]
        3 JUMPIFEQKNIL                     R0 ; [+3]
        5 JUMPIFNOTEQKS                    R0 K1 [""] ; [+3]
        7 LOADK                            R1 K2 ["https://apis.roblox.com"]
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K5 [string.gsub]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K6 ["/+$"]
       13 LOADK                            R4 K1 [""]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_4:
        0 LOADN                            R3 1
        1 LOADN                            R4 1
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 JUMPIFEQKS                       R1 K3 ["/"] ; [+4]
       10 LOADNIL                          R1
       11 LOADK                            R2 K4 ["endpoint must be a path starting with /, such as /cloud/v2/universes/123"]
       12 RETURN                           R1 2
       13 GETIMPORT                        R2 K6 [string.match]
       15 MOVE                             R3 R0
       16 LOADK                            R4 K7 ["^[^?#]*"]
       17 CALL                             R2 2 1
       18 OR                               R1 R2 R0
       19 GETIMPORT                        R2 K9 [string.find]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K10 ["/%.%./"]
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+12]
       25 GETIMPORT                        R2 K9 [string.find]
       27 MOVE                             R3 R1
       28 LOADK                            R4 K11 ["/%.%.$"]
       29 CALL                             R2 2 1
       30 JUMPIF                           R2 ; [+6]
       31 GETIMPORT                        R2 K9 [string.find]
       33 MOVE                             R3 R0
       34 LOADK                            R4 K12 ["[%s\\]"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+3]
       37 LOADNIL                          R2
       38 LOADK                            R3 K13 ["endpoint must not contain '..' path segments, whitespace, or backslashes"]
       39 RETURN                           R2 2
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K14 ["apisUrl"]
       43 JUMPIFEQKNIL                     R4 ; [+3]
       45 JUMPIFNOTEQKS                    R4 K15 [""] ; [+3]
       47 LOADK                            R3 K16 ["https://apis.roblox.com"]
       48 JUMP                             ; [+7]
       49 GETIMPORT                        R5 K18 [string.gsub]
       51 MOVE                             R6 R4
       52 LOADK                            R7 K19 ["/+$"]
       53 LOADK                            R8 K15 [""]
       54 CALL                             R5 3 1
       55 MOVE                             R3 R5
       56 MOVE                             R4 R0
       57 CONCAT                           R2 R3 R4
       58 LOADNIL                          R3
       59 RETURN                           R2 2

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        4 NEWTABLE                         R1 0 0
        6 LOADNIL                          R2
        7 RETURN                           R1 2
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+16]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["json"]
       18 GETTABLEKS                       R2 R2 K5 ["decodeAsync"]
       20 MOVE                             R3 R0
       21 FASTPCALL                        pcall 2 ; [+2]
       22 GETIMPORT                        R1 K7 [pcall]
       24 CALL                             R1 2 2
       25 JUMPIF                           R1 ; [+3]
       26 LOADNIL                          R3
       27 LOADK                            R4 K8 ["With files, body must be a JSON object whose keys are form field names, for example {\"request\":{...}}"]
       28 RETURN                           R3 2
       29 MOVE                             R0 R2
       30 FASTCALL1                        TYPE R0 ; [+3]
       31 MOVE                             R2 R0
       32 GETIMPORT                        R1 K2 [type]
       34 CALL                             R1 1 1
       35 JUMPIFNOTEQKS                    R1 K9 ["table"] ; [+5]
       37 LENGTH                           R1 R0
       38 LOADN                            R2 0
       39 JUMPIFNOTLT                      R2 R1 ; [+4]
       41 LOADNIL                          R1
       42 LOADK                            R2 K8 ["With files, body must be a JSON object whose keys are form field names, for example {\"request\":{...}}"]
       43 RETURN                           R1 2
       44 NEWTABLE                         R1 0 0
       46 MOVE                             R2 R0
       47 LOADNIL                          R3
       48 LOADNIL                          R4
       49 FORGPREP                         R2
       50 FASTCALL1                        TYPE R5 ; [+3]
       51 MOVE                             R8 R5
       52 GETIMPORT                        R7 K2 [type]
       54 CALL                             R7 1 1
       55 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+7]
       57 GETIMPORT                        R7 K11 [string.match]
       59 MOVE                             R8 R5
       60 LOADK                            R9 K12 ["^[%w_%-%.]+$"]
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+3]
       63 LOADNIL                          R7
       64 LOADK                            R8 K8 ["With files, body must be a JSON object whose keys are form field names, for example {\"request\":{...}}"]
       65 RETURN                           R7 2
       66 FASTCALL1                        TYPE R6 ; [+3]
       67 MOVE                             R9 R6
       68 GETIMPORT                        R8 K2 [type]
       70 CALL                             R8 1 1
       71 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+9]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K4 ["json"]
       76 GETTABLEKS                       R7 R7 K13 ["encodeAsync"]
       78 MOVE                             R8 R6
       79 CALL                             R7 1 1
       80 JUMP                             ; [+5]
       81 FASTCALL1                        TOSTRING R6 ; [+3]
       82 MOVE                             R8 R6
       83 GETIMPORT                        R7 K15 [tostring]
       85 CALL                             R7 1 1
       86 DUPTABLE                         R10 K18 [{"name", "value"}]
       87 SETTABLEKS                       R5 R10 K16 ["name"]
       89 SETTABLEKS                       R7 R10 K17 ["value"]
       91 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       93 MOVE                             R9 R1
       94 GETIMPORT                        R8 K20 [table.insert]
       96 CALL                             R8 2 0
       97 FORGLOOP                         R2 2 ; [-48]
       99 GETIMPORT                        R2 K22 [table.sort]
      101 MOVE                             R3 R1
      102 DUPCLOSURE                       R4 K23 [PROTO_5]
      103 CALL                             R2 2 0
      104 MOVE                             R2 R1
      105 LOADNIL                          R3
      106 RETURN                           R2 2

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAsync"]
        3 GETUPVAL                         R3 1
        4 FASTPCALL                        pcall 2 ; [+2]
        5 GETIMPORT                        R1 K2 [pcall]
        7 CALL                             R1 2 2
        8 JUMPIF                           R1 ; [+10]
        9 LOADK                            R3 K3 ["Could not read the approved upload directories: %*"]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R6 R2
       12 GETIMPORT                        R5 K5 [tostring]
       14 CALL                             R5 1 1
       15 NAMECALL                         R3 R3 K6 ["format"]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1
       19 MOVE                             R3 R0
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K7 ["isPathAllowed"]
       26 GETTABLEKS                       R9 R7 K8 ["path"]
       28 MOVE                             R10 R2
       29 CALL                             R8 2 1
       30 JUMPIF                           R8 ; [+7]
       31 LOADK                            R8 K9 ["%* is not inside a directory approved for uploads. Ask the creator to add the file's directory to the approved upload directories in Assistant Settings -> MCP Permissions, then retry. Do not copy or move the file to work around this."]
       32 GETTABLEKS                       R10 R7 K8 ["path"]
       34 NAMECALL                         R8 R8 K6 ["format"]
       36 CALL                             R8 2 1
       37 RETURN                           R8 1
       38 FORGLOOP                         R3 2 ; [-16]
       40 LOADNIL                          R3
       41 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 MOVE                             R5 R2
        7 RETURN                           R3 3
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["new"]
       11 CALL                             R3 0 1
       12 LOADB                            R6 1
       13 NAMECALL                         R4 R3 K1 ["forceMultipart"]
       15 CALL                             R4 2 0
       16 MOVE                             R4 R0
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 GETTABLEKS                       R11 R8 K2 ["name"]
       22 GETTABLEKS                       R12 R8 K3 ["value"]
       24 NAMECALL                         R9 R3 K4 ["addField"]
       26 CALL                             R9 3 0
       27 FORGLOOP                         R4 2 ; [-8]
       29 MOVE                             R4 R1
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K5 ["importFileBinaryAsync"]
       36 GETTABLEKS                       R11 R8 K6 ["path"]
       38 GETUPVAL                         R12 3
       39 FASTPCALL                        pcall 3 ; [+2]
       40 GETIMPORT                        R9 K8 [pcall]
       42 CALL                             R9 3 2
       43 JUMPIFNOT                        R9 ; [+9]
       44 FASTCALL1                        TYPE R10 ; [+3]
       45 MOVE                             R12 R10
       46 GETIMPORT                        R11 K10 [type]
       48 CALL                             R11 1 1
       49 JUMPIFNOTEQKS                    R11 K11 ["string"] ; [+3]
       51 JUMPIFNOTEQKS                    R10 K12 [""] ; [+17]
       53 LOADNIL                          R11
       54 LOADNIL                          R12
       55 LOADK                            R13 K13 ["Could not read %* (files must exist and be at most %* MB): %*"]
       56 GETTABLEKS                       R15 R8 K6 ["path"]
       58 GETUPVAL                         R17 3
       59 IDIVK                            R16 R17 K14 [1048576]
       60 FASTCALL1                        TOSTRING R10 ; [+3]
       61 MOVE                             R18 R10
       62 GETIMPORT                        R17 K16 [tostring]
       64 CALL                             R17 1 1
       65 NAMECALL                         R13 R13 K17 ["format"]
       67 CALL                             R13 4 1
       68 RETURN                           R11 3
       69 GETTABLEKS                       R13 R8 K2 ["name"]
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K18 ["file"]
       74 GETTABLEKS                       R16 R8 K6 ["path"]
       76 GETIMPORT                        R18 K20 [string.match]
       78 MOVE                             R19 R16
       79 LOADK                            R20 K21 ["[^/\\]+$"]
       80 CALL                             R18 2 1
       81 ORK                              R17 R18 K18 ["file"]
       82 GETIMPORT                        R18 K23 [string.gsub]
       84 MOVE                             R19 R17
       85 LOADK                            R20 K24 ["[%c\"\\]"]
       86 LOADK                            R21 K25 ["_"]
       87 CALL                             R18 3 1
       88 MOVE                             R15 R18
       89 GETIMPORT                        R16 K28 [buffer.fromstring]
       91 MOVE                             R17 R10
       92 CALL                             R16 1 1
       93 GETTABLEKS                       R17 R8 K29 ["contentType"]
       95 CALL                             R14 3 -1
       96 NAMECALL                         R11 R3 K30 ["addFile"]
       98 CALL                             R11 -1 0
       99 FORGLOOP                         R4 2 ; [-67]
      101 NAMECALL                         R4 R3 K31 ["build"]
      103 CALL                             R4 1 1
      104 NAMECALL                         R5 R3 K32 ["getContentType"]
      106 CALL                             R5 1 1
      107 LOADNIL                          R6
      108 RETURN                           R4 3

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["executeLuau"]
        5 GETTABLEKS                       R0 R0 K2 ["loadCode"]
        7 LOADK                            R1 K3 ["local HttpService = game:GetService(\"HttpService\")\nlocal request = ...\n\nlocal tokenOk, token = pcall(function()\n\treturn HttpService:RequestAccessTokenScopesAsync(HttpService:JSONDecode(request.scopesJson))\nend)\nif not tokenOk then\n\treturn { ok = false, tokenError = tostring(token) }\nend\n\nlocal headers = {}\nif request.useApiKeyHeader then\n\theaders[\"x-api-key\"] = token\nelse\n\theaders.Authorization = token\nend\nif request.body then\n\theaders[\"Content-Type\"] = request.contentType\nend\n\nlocal requestOk, response = pcall(function()\n\treturn HttpService:RequestAsync({ Url = request.url, Method = request.method, Headers = headers, Body = request.body })\nend)\nif not requestOk then\n\treturn { ok = false, error = tostring(response) }\nend\n\nreturn {\n\tok = true,\n\tstatusCode = response.StatusCode,\n\tstatusMessage = response.StatusMessage,\n\tbody = response.Body,\n}\n"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["isMcpOriginated"]
       11 CALL                             R0 2 2
       12 MOVE                             R2 R1
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["body"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R2 K1 ["application/json"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R2
        6 GETTABLEKS                       R3 R0 K2 ["files"]
        8 JUMPIFNOT                        R3 ; [+16]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K3 ["formFields"]
       12 JUMPIF                           R4 ; [+2]
       13 NEWTABLE                         R4 0 0
       15 GETTABLEKS                       R5 R0 K2 ["files"]
       17 CALL                             R3 2 3
       18 JUMPIFNOT                        R5 ; [+4]
       19 DUPTABLE                         R6 K7 [{["ok"] = False, ["error"]}]
       20 SETTABLEKS                       R5 R6 K6 ["error"]
       22 RETURN                           R6 1
       23 MOVE                             R1 R3
       24 MOVE                             R2 R4
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K8 ["json"]
       28 GETTABLEKS                       R3 R3 K9 ["encodeAsync"]
       30 GETTABLEKS                       R4 R0 K10 ["scopes"]
       32 CALL                             R3 1 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K11 ["getEngineFeature"]
       36 LOADK                            R6 K12 ["StudioAssistantPermissions"]
       37 CALL                             R5 1 1
       38 JUMPIFEQKB                       R5 TRUE ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 DUPTABLE                         R5 K18 [{"method", "url", "body", "contentType", "scopesJson", "useApiKeyHeader"}]
       43 GETTABLEKS                       R6 R0 K13 ["method"]
       45 SETTABLEKS                       R6 R5 K13 ["method"]
       47 GETTABLEKS                       R6 R0 K14 ["url"]
       49 SETTABLEKS                       R6 R5 K14 ["url"]
       51 SETTABLEKS                       R1 R5 K0 ["body"]
       53 SETTABLEKS                       R2 R5 K15 ["contentType"]
       55 SETTABLEKS                       R3 R5 K16 ["scopesJson"]
       57 SETTABLEKS                       R4 R5 K17 ["useApiKeyHeader"]
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R5
       63 FASTPCALL                        pcall 1 ; [+2]
       64 GETIMPORT                        R6 K20 [pcall]
       66 CALL                             R6 1 2
       67 JUMPIF                           R6 ; [+13]
       68 DUPTABLE                         R8 K7 [{["ok"] = False, ["error"]}]
       69 LOADK                            R9 K21 ["Open Cloud request failed: %*"]
       70 FASTCALL1                        TOSTRING R7 ; [+3]
       71 MOVE                             R12 R7
       72 GETIMPORT                        R11 K23 [tostring]
       74 CALL                             R11 1 1
       75 NAMECALL                         R9 R9 K24 ["format"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K6 ["error"]
       80 RETURN                           R8 1
       81 FASTCALL1                        TYPE R7 ; [+3]
       82 MOVE                             R9 R7
       83 GETIMPORT                        R8 K26 [type]
       85 CALL                             R8 1 1
       86 JUMPIFEQKS                       R8 K27 ["table"] ; [+14]
       88 DUPTABLE                         R8 K7 [{["ok"] = False, ["error"]}]
       89 LOADK                            R9 K28 ["Open Cloud request returned an unexpected result: %*"]
       90 FASTCALL1                        TOSTRING R7 ; [+3]
       91 MOVE                             R12 R7
       92 GETIMPORT                        R11 K23 [tostring]
       94 CALL                             R11 1 1
       95 NAMECALL                         R9 R9 K24 ["format"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K6 ["error"]
      100 RETURN                           R8 1
      101 RETURN                           R7 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K0 ["addText"]
        5 CALL                             R2 2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["setStructuredContent"]
        9 CALL                             R2 2 1
       10 LOADB                            R4 1
       11 NAMECALL                         R2 R2 K2 ["setError"]
       13 CALL                             R2 2 1
       14 NAMECALL                         R2 R2 K3 ["build"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_14:
        0 GETIMPORT                        R2 K2 [string.upper]
        2 GETTABLEKS                       R4 R0 K4 ["method"]
        4 ORK                              R3 R4 K3 [""]
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K7 [table.find]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+17]
       12 GETUPVAL                         R3 1
       13 LOADK                            R4 K8 ["method must be one of %*"]
       14 GETIMPORT                        R6 K10 [table.concat]
       16 GETUPVAL                         R7 0
       17 LOADK                            R8 K11 [", "]
       18 CALL                             R6 2 1
       19 NAMECALL                         R4 R4 K12 ["format"]
       21 CALL                             R4 2 1
       22 DUPTABLE                         R5 K13 [{"method"}]
       23 GETTABLEKS                       R6 R0 K4 ["method"]
       25 SETTABLEKS                       R6 R5 K4 ["method"]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R5 R0 K14 ["endpoint"]
       32 ORK                              R4 R5 K3 [""]
       33 CALL                             R3 1 2
       34 JUMPIF                           R3 ; [+11]
       35 GETUPVAL                         R5 1
       36 MOVE                             R6 R4
       37 DUPTABLE                         R7 K15 [{"method", "endpoint"}]
       38 SETTABLEKS                       R2 R7 K4 ["method"]
       40 GETTABLEKS                       R8 R0 K14 ["endpoint"]
       42 SETTABLEKS                       R8 R7 K14 ["endpoint"]
       44 CALL                             R5 2 -1
       45 RETURN                           R5 -1
       46 DUPTABLE                         R5 K19 [{"method", "url", "scopes", "isMcpOriginated"}]
       47 SETTABLEKS                       R2 R5 K4 ["method"]
       49 SETTABLEKS                       R3 R5 K16 ["url"]
       51 GETTABLEKS                       R6 R0 K17 ["scopes"]
       53 JUMPIF                           R6 ; [+2]
       54 NEWTABLE                         R6 0 0
       56 SETTABLEKS                       R6 R5 K17 ["scopes"]
       58 JUMPIFNOT                        R1 ; [+3]
       59 GETTABLEKS                       R6 R1 K20 ["isThirdPartyRequest"]
       61 JUMPIF                           R6 ; [+1]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K18 ["isMcpOriginated"]
       65 GETTABLEKS                       R6 R0 K21 ["files"]
       67 JUMPIFEQKNIL                     R6 ; [+57]
       69 GETIMPORT                        R6 K7 [table.find]
       71 GETUPVAL                         R7 3
       72 MOVE                             R8 R2
       73 CALL                             R6 2 1
       74 JUMPIF                           R6 ; [+17]
       75 GETUPVAL                         R6 1
       76 LOADK                            R7 K22 ["files can only be sent with %*"]
       77 GETIMPORT                        R9 K10 [table.concat]
       79 GETUPVAL                         R10 3
       80 LOADK                            R11 K11 [", "]
       81 CALL                             R9 2 1
       82 NAMECALL                         R7 R7 K12 ["format"]
       84 CALL                             R7 2 1
       85 DUPTABLE                         R8 K23 [{"method", "url"}]
       86 SETTABLEKS                       R2 R8 K4 ["method"]
       88 SETTABLEKS                       R3 R8 K16 ["url"]
       90 CALL                             R6 2 -1
       91 RETURN                           R6 -1
       92 GETUPVAL                         R6 4
       93 GETTABLEKS                       R7 R0 K21 ["files"]
       95 CALL                             R6 1 2
       96 JUMPIF                           R6 ; [+9]
       97 GETUPVAL                         R8 1
       98 MOVE                             R9 R7
       99 DUPTABLE                         R10 K23 [{"method", "url"}]
      100 SETTABLEKS                       R2 R10 K4 ["method"]
      102 SETTABLEKS                       R3 R10 K16 ["url"]
      104 CALL                             R8 2 -1
      105 RETURN                           R8 -1
      106 GETUPVAL                         R8 5
      107 GETTABLEKS                       R9 R0 K24 ["body"]
      109 CALL                             R8 1 2
      110 JUMPIF                           R8 ; [+9]
      111 GETUPVAL                         R10 1
      112 MOVE                             R11 R9
      113 DUPTABLE                         R12 K23 [{"method", "url"}]
      114 SETTABLEKS                       R2 R12 K4 ["method"]
      116 SETTABLEKS                       R3 R12 K16 ["url"]
      118 CALL                             R10 2 -1
      119 RETURN                           R10 -1
      120 SETTABLEKS                       R6 R5 K21 ["files"]
      122 SETTABLEKS                       R8 R5 K25 ["formFields"]
      124 JUMP                             ; [+24]
      125 GETTABLEKS                       R6 R0 K24 ["body"]
      127 FASTCALL1                        TYPE R6 ; [+3]
      128 MOVE                             R8 R6
      129 GETIMPORT                        R7 K27 [type]
      131 CALL                             R7 1 1
      132 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+9]
      134 GETUPVAL                         R7 6
      135 GETTABLEKS                       R7 R7 K28 ["json"]
      137 GETTABLEKS                       R7 R7 K29 ["encodeAsync"]
      139 MOVE                             R8 R6
      140 CALL                             R7 1 1
      141 MOVE                             R6 R7
      142 JUMPIFNOTEQKS                    R6 K3 [""] ; [+3]
      144 LOADNIL                          R7
      145 JUMP                             ; [+1]
      146 MOVE                             R7 R6
      147 SETTABLEKS                       R7 R5 K24 ["body"]
      149 GETUPVAL                         R6 7
      150 GETUPVAL                         R8 8
      151 GETTABLEKS                       R8 R8 K30 ["Identity"]
      153 GETTABLEKS                       R8 R8 K31 ["Edit"]
      155 MOVE                             R9 R5
      156 NAMECALL                         R6 R6 K32 ["InvokeAsync"]
      158 CALL                             R6 3 1
      159 GETTABLEKS                       R7 R6 K33 ["tokenError"]
      161 JUMPIFNOT                        R7 ; [+14]
      162 GETUPVAL                         R7 1
      163 LOADK                            R8 K34 ["Could not acquire an Open Cloud access token: %*. Ask the creator to grant the required scope in the Assistant MCP Permissions settings, then retry."]
      164 GETTABLEKS                       R10 R6 K33 ["tokenError"]
      166 NAMECALL                         R8 R8 K12 ["format"]
      168 CALL                             R8 2 1
      169 DUPTABLE                         R9 K23 [{"method", "url"}]
      170 SETTABLEKS                       R2 R9 K4 ["method"]
      172 SETTABLEKS                       R3 R9 K16 ["url"]
      174 CALL                             R7 2 -1
      175 RETURN                           R7 -1
      176 GETTABLEKS                       R7 R6 K35 ["ok"]
      178 JUMPIF                           R7 ; [+11]
      179 GETUPVAL                         R7 1
      180 GETTABLEKS                       R9 R6 K37 ["error"]
      182 ORK                              R8 R9 K36 ["Open Cloud request failed"]
      183 DUPTABLE                         R9 K23 [{"method", "url"}]
      184 SETTABLEKS                       R2 R9 K4 ["method"]
      186 SETTABLEKS                       R3 R9 K16 ["url"]
      188 CALL                             R7 2 -1
      189 RETURN                           R7 -1
      190 GETTABLEKS                       R7 R6 K38 ["statusCode"]
      192 LOADB                            R8 0
      193 LOADN                            R9 200
      194 JUMPIFNOTLE                      R9 R7 ; [+6]
      196 LOADN                            R9 300
      197 JUMPIFLT                         R7 R9 ; [+2]
      199 LOADB                            R8 0 +1
      200 LOADB                            R8 1
      201 GETTABLEKS                       R10 R6 K24 ["body"]
      203 ORK                              R9 R10 K3 [""]
      204 LENGTH                           R10 R9
      205 LOADK                            R12 K39 [50000]
      206 JUMPIFLT                         R12 R10 ; [+2]
      208 LOADB                            R11 0 +1
      209 LOADB                            R11 1
      210 JUMPIFNOT                        R11 ; [+15]
      211 LOADN                            R14 1
      212 LOADK                            R15 K39 [50000]
      213 FASTCALL3                        STRING_SUB R9 R14 R15
      215 MOVE                             R13 R9
      216 GETIMPORT                        R12 K41 [string.sub]
      218 CALL                             R12 3 1
      219 LOADK                            R13 K42 ["\n\n[Response truncated to %* of %* characters. Use paging parameters such as maxPageSize to request less data.]"]
      220 LOADK                            R15 K39 [50000]
      221 MOVE                             R16 R10
      222 NAMECALL                         R13 R13 K12 ["format"]
      224 CALL                             R13 3 1
      225 CONCAT                           R9 R12 R13
      226 NEWTABLE                         R12 0 1
      228 LOADK                            R13 K43 ["%* %* -> %* %*"]
      229 MOVE                             R15 R2
      230 MOVE                             R16 R3
      231 MOVE                             R17 R7
      232 GETTABLEKS                       R19 R6 K44 ["statusMessage"]
      234 ORK                              R18 R19 K3 [""]
      235 NAMECALL                         R13 R13 K12 ["format"]
      237 CALL                             R13 5 1
      238 SETLIST                          R12 R13 1 [1]
      240 JUMPIFNOTEQKN                    R7 K45 [401] ; [+3]
      242 LOADK                            R13 K46 ["The access token was rejected. Retry the request to mint a fresh token."]
      243 JUMP                             ; [+5]
      244 JUMPIFNOTEQKN                    R7 K47 [403] ; [+3]
      246 LOADK                            R13 K48 ["The token lacks permission for this endpoint. Pass the endpoint's scopes in `scopes` to see which one is missing. Ask the creator to grant the required scope in the Assistant MCP Permissions settings, then retry."]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R13
      249 JUMPIFNOT                        R13 ; [+7]
      250 FASTCALL2                        TABLE_INSERT R12 R13 ; [+5]
      252 MOVE                             R15 R12
      253 MOVE                             R16 R13
      254 GETIMPORT                        R14 K50 [table.insert]
      256 CALL                             R14 2 0
      257 JUMPIFEQKS                       R9 K3 [""] ; [+15]
      259 FASTCALL2K                       TABLE_INSERT R12 K3 ; [+5]
      261 MOVE                             R15 R12
      262 LOADK                            R16 K3 [""]
      263 GETIMPORT                        R14 K50 [table.insert]
      265 CALL                             R14 2 0
      266 FASTCALL2                        TABLE_INSERT R12 R9 ; [+5]
      268 MOVE                             R15 R12
      269 MOVE                             R16 R9
      270 GETIMPORT                        R14 K50 [table.insert]
      272 CALL                             R14 2 0
      273 GETUPVAL                         R14 9
      274 CALL                             R14 0 1
      275 GETIMPORT                        R16 K10 [table.concat]
      277 MOVE                             R17 R12
      278 LOADK                            R18 K51 ["\n"]
      279 CALL                             R16 2 -1
      280 NAMECALL                         R14 R14 K52 ["addText"]
      282 CALL                             R14 -1 1
      283 DUPTABLE                         R16 K55 [{"method", "url", "statusCode", "success", "truncated"}]
      284 SETTABLEKS                       R2 R16 K4 ["method"]
      286 SETTABLEKS                       R3 R16 K16 ["url"]
      288 SETTABLEKS                       R7 R16 K38 ["statusCode"]
      290 SETTABLEKS                       R8 R16 K53 ["success"]
      292 SETTABLEKS                       R11 R16 K54 ["truncated"]
      294 NAMECALL                         R14 R14 K56 ["setStructuredContent"]
      296 CALL                             R14 2 1
      297 NOT                              R16 R8
      298 NAMECALL                         R14 R14 K57 ["setError"]
      300 CALL                             R14 2 1
      301 NAMECALL                         R14 R14 K58 ["build"]
      303 CALL                             R14 1 -1
      304 RETURN                           R14 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R6 P2
       11 CAPTURE                          VAL R1
       12 NEWCLOSURE                       R7 P3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 NEWCLOSURE                       R8 P4
       16 CAPTURE                          VAL R7
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U2
       20 NEWCLOSURE                       R9 P5
       21 CAPTURE                          VAL R8
       22 CAPTURE                          VAL R1
       23 GETUPVAL                         R10 3
       24 GETTABLEKS                       R10 R10 K3 ["invoke"]
       26 MOVE                             R11 R2
       27 LOADK                            R12 K4 ["OpenCloudInvokeTool.invoke"]
       28 CALL                             R10 2 1
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R11 R11 K5 ["new"]
       32 CALL                             R11 0 1
       33 NAMECALL                         R12 R2 K6 ["GetIdentity"]
       35 CALL                             R12 1 1
       36 GETUPVAL                         R13 5
       37 GETTABLEKS                       R13 R13 K7 ["Identity"]
       39 GETTABLEKS                       R13 R13 K8 ["Standalone"]
       41 JUMPIFEQ                         R12 R13 ; [+9]
       43 NEWCLOSURE                       R16 P6
       44 CAPTURE                          VAL R9
       45 NAMECALL                         R14 R10 K9 ["Connect"]
       47 CALL                             R14 2 -1
       48 NAMECALL                         R12 R11 K10 ["Add"]
       50 CALL                             R12 -1 0
       51 NEWCLOSURE                       R14 P7
       52 CAPTURE                          VAL R11
       53 NAMECALL                         R12 R3 K11 ["Once"]
       55 CALL                             R12 2 0
       56 DUPCLOSURE                       R12 K12 [PROTO_13]
       57 CAPTURE                          UPVAL U6
       58 NEWCLOSURE                       R13 P9
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R10
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U6
       69 GETUPVAL                         R14 10
       70 GETTABLEKS                       R14 R14 K13 ["define"]
       72 CALL                             R14 0 1
       73 GETUPVAL                         R16 11
       74 GETTABLEKS                       R16 R16 K14 ["OpenCloudInvoke"]
       76 NAMECALL                         R14 R14 K15 ["setName"]
       78 CALL                             R14 2 1
       79 GETUPVAL                         R16 11
       80 GETTABLEKS                       R16 R16 K16 ["replaceTokens"]
       82 LOADK                            R17 K17 ["Sends an authenticated request to a Roblox Open Cloud API and returns the status code and response body.\n\nAuthentication is handled automatically: the request runs with the Assistant's permissions, using an access token limited to the Open Cloud scopes the creator has granted. Never pass API keys or auth headers yourself.\n\nUsage:\n- endpoint is the path under {APIS_URL}, starting with / and including any query string (for example /cloud/v2/universes/123/developer-products). Full URLs are not accepted.\n- body is a JSON-encoded string, sent with Content-Type: application/json.\n- scopes lists the Open Cloud scopes the endpoint needs, for example [\"universe:write\"]. Optional, but passing them produces a precise error if the creator has not granted one.\n- Read the endpoint's reference at https://create.roblox.com/docs/cloud with {ToolNames.HttpGet} to find its endpoint, method, body shape, and required scopes.\n\nErrors:\n- A denied or ungranted scope, or a 403 response, means the creator has not allowed that permission. Ask them to enable it in the Assistant MCP Permissions settings. Do not try to work around it.\n- A 401 response means the token was rejected. Retry once.\n\nExamples:\n- {ToolNames.OpenCloudInvoke}(method: \"GET\", endpoint: \"/cloud/v2/universes/123\", scopes: [\"universe:read\"])\n- {ToolNames.OpenCloudInvoke}(method: \"PATCH\", endpoint: \"/cloud/v2/universes/123?updateMask=voiceChatEnabled\", body: '{\"voiceChatEnabled\":true}', scopes: [\"universe:write\"])\n\nFile uploads:\n- files uploads local asset files as a multipart/form-data request. Each entry is { name, path, contentType? }: name is the form field (the Assets API uses \"fileContent\"), path is an absolute path on the creator's machine, and contentType defaults from the file extension.\n- With files, body must be a JSON object whose keys become form fields. Object values are JSON-encoded, so pass the Assets API \"request\" field as an object.\n- Only asset files can be uploaded ({UPLOAD_EXTENSIONS}), up to {MAX_FILES} files of {MAX_FILE_MB} MB each.\n- Files must be inside a directory the creator has approved in Assistant Settings -> MCP Permissions. If a file is rejected, ask the creator to approve its directory there.\n- Asset uploads return an operation. Poll GET /assets/v1/operations/{operationId} until done is true to get the asset ID.\n- {ToolNames.OpenCloudInvoke}(method: \"POST\", endpoint: \"/assets/v1/assets\", body: '{\"request\":{\"assetType\":\"Model\",\"displayName\":\"Tree\",\"description\":\"A tree\",\"creationContext\":{\"creator\":{\"userId\":\"123\"}}}}', files: [{ name: \"fileContent\", path: \"/Users/me/tree.fbx\" }], scopes: [\"asset:read\", \"asset:write\"])\n"]
       83 DUPTABLE                         R18 K23 [{["APIS_URL"] = "https://apis.roblox.com", ["UPLOAD_EXTENSIONS"], ["MAX_FILES"], ["MAX_FILE_MB"]}]
       84 GETIMPORT                        R19 K26 [table.concat]
       86 GETUPVAL                         R20 12
       87 LOADK                            R21 K27 [", "]
       88 CALL                             R19 2 1
       89 SETTABLEKS                       R19 R18 K20 ["UPLOAD_EXTENSIONS"]
       91 LOADN                            R20 5
       92 FASTCALL1                        TOSTRING R20 ; [+2]
       93 GETIMPORT                        R19 K29 [tostring]
       95 CALL                             R19 1 1
       96 SETTABLEKS                       R19 R18 K21 ["MAX_FILES"]
       98 GETUPVAL                         R21 2
       99 IDIVK                            R20 R21 K30 [1048576]
      100 FASTCALL1                        TOSTRING R20 ; [+2]
      101 GETIMPORT                        R19 K29 [tostring]
      103 CALL                             R19 1 1
      104 SETTABLEKS                       R19 R18 K22 ["MAX_FILE_MB"]
      106 CALL                             R16 2 -1
      107 NAMECALL                         R14 R14 K31 ["setDescription"]
      109 CALL                             R14 -1 1
      110 LOADK                            R16 K32 ["method"]
      111 DUPTABLE                         R17 K38 [{["type"] = "string", ["enum"], ["description"] = "HTTP method."}]
      112 GETUPVAL                         R18 7
      113 SETTABLEKS                       R18 R17 K35 ["enum"]
      115 NAMECALL                         R14 R14 K39 ["addArgument"]
      117 CALL                             R14 3 1
      118 LOADK                            R16 K40 ["endpoint"]
      119 DUPTABLE                         R17 K42 [{["type"] = "string", ["description"] = "Open Cloud path under https://apis.roblox.com, starting with / and including any query string."}]
      120 NAMECALL                         R14 R14 K39 ["addArgument"]
      122 CALL                             R14 3 1
      123 LOADK                            R16 K43 ["body"]
      124 DUPTABLE                         R17 K45 [{["type"] = "string", ["description"] = "JSON-encoded request body. Omit for GET and DELETE. With files, a JSON object of form fields."}]
      125 NAMECALL                         R14 R14 K46 ["addOptionalArgument"]
      127 CALL                             R14 3 1
      128 LOADK                            R16 K47 ["scopes"]
      129 DUPTABLE                         R17 K51 [{["type"] = "array", ["items"], ["description"] = "Open Cloud scopes the endpoint requires, such as \"universe:read\" or \"game-pass:write\"."}]
      130 DUPTABLE                         R18 K52 [{["type"] = "string"}]
      131 SETTABLEKS                       R18 R17 K49 ["items"]
      133 NAMECALL                         R14 R14 K46 ["addOptionalArgument"]
      135 CALL                             R14 3 1
      136 LOADK                            R16 K53 ["files"]
      137 DUPTABLE                         R17 K55 [{["type"] = "array", ["items"], ["description"] = "Local files to upload as multipart/form-data. Requires POST, PUT, or PATCH."}]
      138 DUPTABLE                         R18 K59 [{["type"] = "object", ["properties"], ["required"]}]
      139 DUPTABLE                         R19 K63 [{"name", "path", "contentType"}]
      140 DUPTABLE                         R20 K65 [{["type"] = "string", ["description"] = "Form field name, such as \"fileContent\"."}]
      141 SETTABLEKS                       R20 R19 K60 ["name"]
      143 DUPTABLE                         R20 K67 [{["type"] = "string", ["description"] = "Absolute path to a local asset file."}]
      144 SETTABLEKS                       R20 R19 K61 ["path"]
      146 DUPTABLE                         R20 K69 [{["type"] = "string", ["description"] = "MIME type for the file part. Defaults from the file extension."}]
      147 SETTABLEKS                       R20 R19 K62 ["contentType"]
      149 SETTABLEKS                       R19 R18 K57 ["properties"]
      151 NEWTABLE                         R19 0 2
      153 LOADK                            R20 K60 ["name"]
      154 LOADK                            R21 K61 ["path"]
      155 SETLIST                          R19 R20 2 [1]
      157 SETTABLEKS                       R19 R18 K58 ["required"]
      159 SETTABLEKS                       R18 R17 K49 ["items"]
      161 NAMECALL                         R14 R14 K46 ["addOptionalArgument"]
      163 CALL                             R14 3 1
      164 LOADK                            R16 K70 ["Open Cloud Request"]
      165 NAMECALL                         R14 R14 K71 ["setTitle"]
      167 CALL                             R14 2 1
      168 DUPTABLE                         R16 K79 [{["title"] = "Open Cloud Request", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      169 NAMECALL                         R14 R14 K80 ["setAnnotations"]
      171 CALL                             R14 2 1
      172 MOVE                             R16 R13
      173 NAMECALL                         R14 R14 K81 ["setHandler"]
      175 CALL                             R14 2 1
      176 NAMECALL                         R14 R14 K82 ["build"]
      178 CALL                             R14 1 1
      179 DUPTABLE                         R15 K84 [{"definition"}]
      180 SETTABLEKS                       R14 R15 K83 ["definition"]
      182 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["FormRequestBuilder"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Util"]
       40 GETTABLEKS                       R8 R8 K13 ["LocalFilePath"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Tools"]
       47 GETTABLEKS                       R9 R9 K15 ["ToolTypes"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K11 ["Util"]
       54 GETTABLEKS                       R10 R10 K16 ["UploadDirectories"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R3 K17 ["Remote"]
       59 GETTABLEKS                       R11 R4 K11 ["Util"]
       61 GETTABLEKS                       R11 R11 K18 ["ToolBuilder"]
       63 GETTABLEKS                       R12 R4 K11 ["Util"]
       65 GETTABLEKS                       R12 R12 K19 ["ToolResult"]
       67 GETTABLEKS                       R13 R8 K20 ["ToolNames"]
       69 NEWTABLE                         R14 0 5
       71 LOADK                            R15 K21 ["GET"]
       72 LOADK                            R16 K22 ["POST"]
       73 LOADK                            R17 K23 ["PUT"]
       74 LOADK                            R18 K24 ["PATCH"]
       75 LOADK                            R19 K25 ["DELETE"]
       76 SETLIST                          R14 R15 5 [1]
       78 NEWTABLE                         R15 0 3
       80 LOADK                            R16 K22 ["POST"]
       81 LOADK                            R17 K23 ["PUT"]
       82 LOADK                            R18 K24 ["PATCH"]
       83 SETLIST                          R15 R16 3 [1]
       85 GETTABLEKS                       R16 R5 K26 ["FIntAssistantOpenCloudInvokeMaxFileSize"]
       87 DUPTABLE                         R17 K58 [{["bmp"] = "image/bmp", ["fbx"] = "model/fbx", ["flac"] = "audio/flac", ["glb"] = "model/gltf-binary", ["gltf"] = "model/gltf+json", ["jpeg"] = "image/jpeg", ["jpg"] = "image/jpeg", ["mov"] = "video/mov", ["mp3"] = "audio/mpeg", ["mp4"] = "video/mp4", ["ogg"] = "audio/ogg", ["png"] = "image/png", ["rbxm"] = "model/x-rbxm", ["rbxmx"] = "model/x-rbxmx", ["tga"] = "image/tga", ["wav"] = "audio/wav"}]
       88 NEWTABLE                         R18 0 0
       90 MOVE                             R19 R17
       91 LOADNIL                          R20
       92 LOADNIL                          R21
       93 FORGPREP                         R19
       94 FASTCALL2                        TABLE_INSERT R18 R22 ; [+5]
       96 MOVE                             R25 R18
       97 MOVE                             R26 R22
       98 GETIMPORT                        R24 K61 [table.insert]
      100 CALL                             R24 2 0
      101 FORGLOOP                         R19 1 ; [-8]
      103 GETIMPORT                        R19 K63 [table.sort]
      105 MOVE                             R20 R18
      106 CALL                             R19 1 0
      107 DUPCLOSURE                       R19 K64 [PROTO_0]
      108 DUPCLOSURE                       R20 K65 [PROTO_1]
      109 DUPCLOSURE                       R21 K66 [PROTO_2]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R18
      113 DUPCLOSURE                       R22 K67 [PROTO_15]
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R21
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R18
      127 RETURN                           R22 1
