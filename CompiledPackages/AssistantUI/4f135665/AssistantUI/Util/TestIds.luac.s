PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPEOF R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+5]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 JUMP                             ; [+49]
       15 LOADNIL                          R6
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K1 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+24]
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+5]
       32 MOVE                             R7 R5
       33 CALL                             R7 0 1
       34 MOVE                             R6 R7
       35 JUMP                             ; [+13]
       36 GETIMPORT                        R7 K6 [error]
       38 LOADK                            R9 K7 ["Unexpected value type: %*"]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K1 [typeof]
       43 CALL                             R11 1 1
       44 NAMECALL                         R9 R9 K8 ["format"]
       46 CALL                             R9 2 1
       47 MOVE                             R8 R9
       48 CALL                             R7 1 0
       49 GETUPVAL                         R8 1
       50 GETTABLE                         R7 R8 R6
       51 JUMPIFNOT                        R7 ; [+9]
       52 GETIMPORT                        R7 K6 [error]
       54 LOADK                            R9 K9 ["Duplicate test id found: %*"]
       55 MOVE                             R11 R6
       56 NAMECALL                         R9 R9 K8 ["format"]
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 1
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R7 R6
       64 FORGLOOP                         R1 2 ; [-61]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K3 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent"}]
        4 LOADK                            R2 K4 ["Assistant-Header-ToggleThreadsMenu"]
        5 SETTABLEKS                       R2 R1 K0 ["ToggleThreadsMenu"]
        7 LOADK                            R2 K5 ["Assistant-Header-SettingsButton"]
        8 SETTABLEKS                       R2 R1 K1 ["SettingsButton"]
       10 LOADK                            R2 K6 ["Assistant-Header-SettingsContent"]
       11 SETTABLEKS                       R2 R1 K2 ["SettingsContent"]
       13 SETTABLEKS                       R1 R0 K7 ["Header"]
       15 DUPTABLE                         R1 K11 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
       16 LOADK                            R2 K12 ["Assistant-ThreadsMenu-Container"]
       17 SETTABLEKS                       R2 R1 K8 ["Container"]
       19 LOADK                            R2 K13 ["Assistant-ThreadsMenu-ExistingThreadButton"]
       20 SETTABLEKS                       R2 R1 K9 ["ExistingThreadButton"]
       22 LOADK                            R2 K14 ["Assistant-ThreadsMenu-AddThreadButton"]
       23 SETTABLEKS                       R2 R1 K10 ["AddThreadButton"]
       25 SETTABLEKS                       R1 R0 K15 ["ThreadsMenu"]
       27 DUPTABLE                         R1 K17 [{"OptionsButton"}]
       28 LOADK                            R2 K18 ["Assistant-ThreadEntry-OptionsButton"]
       29 SETTABLEKS                       R2 R1 K16 ["OptionsButton"]
       31 SETTABLEKS                       R1 R0 K19 ["ThreadEntry"]
       33 DUPTABLE                         R1 K20 [{"Container"}]
       34 LOADK                            R2 K21 ["Assistant-ThreadOptionsMenu-Container"]
       35 SETTABLEKS                       R2 R1 K8 ["Container"]
       37 SETTABLEKS                       R1 R0 K22 ["ThreadOptionsMenu"]
       39 DUPTABLE                         R1 K24 [{"Container", "Input"}]
       40 LOADK                            R2 K25 ["Assistant-RenameThreadDialog-Container"]
       41 SETTABLEKS                       R2 R1 K8 ["Container"]
       43 LOADK                            R2 K26 ["Assistant-RenameThreadDialog-Input"]
       44 SETTABLEKS                       R2 R1 K23 ["Input"]
       46 SETTABLEKS                       R1 R0 K27 ["RenameThreadDialog"]
       48 DUPTABLE                         R1 K32 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "Footer"}]
       49 LOADK                            R2 K33 ["Assistant-InputArea-Container"]
       50 SETTABLEKS                       R2 R1 K8 ["Container"]
       52 LOADK                            R2 K34 ["Assistant-InputArea-StopButton"]
       53 SETTABLEKS                       R2 R1 K28 ["StopButton"]
       55 LOADK                            R2 K35 ["Assistant-InputArea-AttachImageButton"]
       56 SETTABLEKS                       R2 R1 K29 ["AttachImageButton"]
       58 LOADK                            R2 K36 ["Assistant-InputArea-AttachedImagesPreview"]
       59 SETTABLEKS                       R2 R1 K30 ["AttachedImagesPreview"]
       61 DUPTABLE                         R2 K38 [{"Container", "Icon"}]
       62 LOADK                            R3 K39 ["Assistant-InputArea-Footer-Container"]
       63 SETTABLEKS                       R3 R2 K8 ["Container"]
       65 LOADK                            R3 K40 ["Assistant-InputArea-Footer-Icon"]
       66 SETTABLEKS                       R3 R2 K37 ["Icon"]
       68 SETTABLEKS                       R2 R1 K31 ["Footer"]
       70 SETTABLEKS                       R1 R0 K41 ["InputArea"]
       72 DUPTABLE                         R1 K45 [{"Container", "ThumbsUp", "ThumbsDown", "Retry"}]
       73 LOADK                            R2 K46 ["Assistant-MessageActions-Container"]
       74 SETTABLEKS                       R2 R1 K8 ["Container"]
       76 LOADK                            R2 K47 ["Assistant-MessageActions-ThumbsUp"]
       77 SETTABLEKS                       R2 R1 K42 ["ThumbsUp"]
       79 LOADK                            R2 K48 ["Assistant-MessageActions-ThumbsDown"]
       80 SETTABLEKS                       R2 R1 K43 ["ThumbsDown"]
       82 LOADK                            R2 K49 ["Assistant-MessageActions-Retry"]
       83 SETTABLEKS                       R2 R1 K44 ["Retry"]
       85 SETTABLEKS                       R1 R0 K50 ["MessageActions"]
       87 LOADK                            R1 K51 ["Assistant-GenerationIndicator"]
       88 SETTABLEKS                       R1 R0 K52 ["GenerationIndicator"]
       90 LOADK                            R1 K53 ["Assistant-ModelQualityWarning"]
       91 SETTABLEKS                       R1 R0 K54 ["ModelQualityWarning"]
       93 DUPTABLE                         R1 K56 [{"Button"}]
       94 LOADK                            R2 K57 ["Assistant-ServerManagement-Button"]
       95 SETTABLEKS                       R2 R1 K55 ["Button"]
       97 SETTABLEKS                       R1 R0 K58 ["ServerManagement"]
       99 DUPTABLE                         R1 K61 [{"Checkbox", "CheckboxInput"}]
      100 LOADK                            R2 K62 ["Assistant-McpServer-Checkbox"]
      101 SETTABLEKS                       R2 R1 K59 ["Checkbox"]
      103 LOADK                            R2 K63 ["Assistant-McpServer-Checkbox--container"]
      104 SETTABLEKS                       R2 R1 K60 ["CheckboxInput"]
      106 SETTABLEKS                       R1 R0 K64 ["McpServer"]
      108 DUPTABLE                         R1 K66 [{"Container", "Item"}]
      109 LOADK                            R2 K67 ["Assistant-SlashCommandMenu-Container"]
      110 SETTABLEKS                       R2 R1 K8 ["Container"]
      112 DUPTABLE                         R2 K69 [{"Container", "Command"}]
      113 LOADK                            R3 K70 ["Assistant-SlashCommandMenu-Item-Container"]
      114 SETTABLEKS                       R3 R2 K8 ["Container"]
      116 LOADK                            R3 K71 ["Assistant-SlashCommandMenu-Item-Command"]
      117 SETTABLEKS                       R3 R2 K68 ["Command"]
      119 SETTABLEKS                       R2 R1 K65 ["Item"]
      121 SETTABLEKS                       R1 R0 K72 ["SlashCommandMenu"]
      123 DUPTABLE                         R1 K74 [{"Container", "Option"}]
      124 LOADK                            R2 K75 ["Assistant-ToolMenuView-Container"]
      125 SETTABLEKS                       R2 R1 K8 ["Container"]
      127 DUPTABLE                         R2 K76 [{"Container", "Checkbox"}]
      128 LOADK                            R3 K77 ["Assistant-ToolMenuView-Option-Container"]
      129 SETTABLEKS                       R3 R2 K8 ["Container"]
      131 LOADK                            R3 K78 ["Assistant-ToolMenuView-Option-Checkbox"]
      132 SETTABLEKS                       R3 R2 K59 ["Checkbox"]
      134 SETTABLEKS                       R2 R1 K73 ["Option"]
      136 SETTABLEKS                       R1 R0 K79 ["ToolMenuView"]
      138 DUPTABLE                         R1 K81 [{"Container", "Dropdown"}]
      139 LOADK                            R2 K82 ["Assistant-ModelPicker-Container"]
      140 SETTABLEKS                       R2 R1 K8 ["Container"]
      142 LOADK                            R2 K83 ["Assistant-ModelPicker-Dropdown"]
      143 SETTABLEKS                       R2 R1 K80 ["Dropdown"]
      145 SETTABLEKS                       R1 R0 K84 ["ModelPicker"]
      147 DUPTABLE                         R1 K20 [{"Container"}]
      148 LOADK                            R2 K85 ["Assistant-Carousel-Container"]
      149 SETTABLEKS                       R2 R1 K8 ["Container"]
      151 SETTABLEKS                       R1 R0 K86 ["Carousel"]
      153 DUPTABLE                         R1 K88 [{"Selected"}]
      154 LOADK                            R2 K89 ["Assistant-CarouselItem-Selected"]
      155 SETTABLEKS                       R2 R1 K87 ["Selected"]
      157 SETTABLEKS                       R1 R0 K90 ["CarouselItem"]
      159 DUPTABLE                         R1 K94 [{"Continue", "EditApiKeys", "Close"}]
      160 LOADK                            R2 K95 ["Assistant-Alert-Continue"]
      161 SETTABLEKS                       R2 R1 K91 ["Continue"]
      163 LOADK                            R2 K96 ["Assistant-Alert-EditApiKeys"]
      164 SETTABLEKS                       R2 R1 K92 ["EditApiKeys"]
      166 LOADK                            R2 K97 ["Assistant-Alert-Close"]
      167 SETTABLEKS                       R2 R1 K93 ["Close"]
      169 SETTABLEKS                       R1 R0 K98 ["Alert"]
      171 DUPTABLE                         R1 K101 [{"Image", "Expand"}]
      172 LOADK                            R2 K102 ["Assistant-ImageContent-Image"]
      173 SETTABLEKS                       R2 R1 K99 ["Image"]
      175 LOADK                            R2 K103 ["Assistant-ImageContent-Expand"]
      176 SETTABLEKS                       R2 R1 K100 ["Expand"]
      178 SETTABLEKS                       R1 R0 K104 ["ImageContent"]
      180 DUPTABLE                         R1 K105 [{"Expand"}]
      181 LOADK                            R2 K106 ["Assistant-AssetVariation-Expand"]
      182 SETTABLEKS                       R2 R1 K100 ["Expand"]
      184 SETTABLEKS                       R1 R0 K107 ["AssetVariation"]
      186 DUPTABLE                         R1 K110 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      187 LOADK                            R2 K111 ["Assistant-MaterialGen-Expand"]
      188 SETTABLEKS                       R2 R1 K100 ["Expand"]
      190 LOADK                            R2 K112 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      191 SETTABLEKS                       R2 R1 K108 ["StudsPerTileValueBar"]
      193 LOADK                            R2 K113 ["Assistant-MaterialGen-OrganicPatternToggle"]
      194 SETTABLEKS                       R2 R1 K109 ["OrganicPatternToggle"]
      196 SETTABLEKS                       R1 R0 K114 ["MaterialGen"]
      198 DUPTABLE                         R1 K124 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles", "LastPreview", "NextPreview", "Cancel", "Regenerate", "Publish", "Insert"}]
      199 LOADK                            R2 K125 ["Assistant-MeshGen-Expand"]
      200 SETTABLEKS                       R2 R1 K100 ["Expand"]
      202 LOADK                            R2 K126 ["Assistant-MeshGen-PreviewImage"]
      203 SETTABLEKS                       R2 R1 K115 ["PreviewImage"]
      205 LOADK                            R2 K127 ["Assistant-MeshGen-UseSelection"]
      206 SETTABLEKS                       R2 R1 K116 ["UseSelection"]
      208 LOADK                            R2 K128 ["Assistant-MeshGen-MaxTriangles"]
      209 SETTABLEKS                       R2 R1 K117 ["MaxTriangles"]
      211 LOADK                            R2 K129 ["Assistant-MeshGen-LastPreview"]
      212 SETTABLEKS                       R2 R1 K118 ["LastPreview"]
      214 LOADK                            R2 K130 ["Assistant-MeshGen-NextPreview"]
      215 SETTABLEKS                       R2 R1 K119 ["NextPreview"]
      217 LOADK                            R2 K131 ["Assistant-MeshGen-Cancel"]
      218 SETTABLEKS                       R2 R1 K120 ["Cancel"]
      220 LOADK                            R2 K132 ["Assistant-MeshGen-Regenerate"]
      221 SETTABLEKS                       R2 R1 K121 ["Regenerate"]
      223 LOADK                            R2 K133 ["Assistant-MeshGen-Publish"]
      224 SETTABLEKS                       R2 R1 K122 ["Publish"]
      226 LOADK                            R2 K134 ["Assistant-MeshGen-Insert"]
      227 SETTABLEKS                       R2 R1 K123 ["Insert"]
      229 SETTABLEKS                       R1 R0 K135 ["MeshGen"]
      231 DUPTABLE                         R1 K139 [{"Expand", "Copy", "Run", "Stop"}]
      232 LOADK                            R2 K140 ["Assistant-RunCode-Expand"]
      233 SETTABLEKS                       R2 R1 K100 ["Expand"]
      235 LOADK                            R2 K141 ["Assistant-RunCode-Copy"]
      236 SETTABLEKS                       R2 R1 K136 ["Copy"]
      238 LOADK                            R2 K142 ["Assistant-RunCode-Run"]
      239 SETTABLEKS                       R2 R1 K137 ["Run"]
      241 LOADK                            R2 K143 ["Assistant-RunCode-Stop"]
      242 SETTABLEKS                       R2 R1 K138 ["Stop"]
      244 SETTABLEKS                       R1 R0 K144 ["RunCode"]
      246 DUPTABLE                         R1 K105 [{"Expand"}]
      247 LOADK                            R2 K145 ["Assistant-Thinking-Expand"]
      248 SETTABLEKS                       R2 R1 K100 ["Expand"]
      250 SETTABLEKS                       R1 R0 K146 ["Thinking"]
      252 DUPTABLE                         R1 K151 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      253 LOADK                            R2 K152 ["Assistant-ToolConfirmation-Warning"]
      254 SETTABLEKS                       R2 R1 K147 ["Warning"]
      256 LOADK                            R2 K153 ["Assistant-ToolConfirmation-Accept"]
      257 SETTABLEKS                       R2 R1 K148 ["Accept"]
      259 LOADK                            R2 K154 ["Assistant-ToolConfirmation-Reject"]
      260 SETTABLEKS                       R2 R1 K149 ["Reject"]
      262 LOADK                            R2 K155 ["Assistant-ToolConfirmation-AlwaysAccept"]
      263 SETTABLEKS                       R2 R1 K150 ["AlwaysAccept"]
      265 SETTABLEKS                       R1 R0 K156 ["ToolConfirmation"]
      267 DUPTABLE                         R1 K160 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      268 LOADK                            R2 K161 ["Assistant-ScriptChangeConfirmation-Warning"]
      269 SETTABLEKS                       R2 R1 K147 ["Warning"]
      271 LOADK                            R2 K162 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      272 SETTABLEKS                       R2 R1 K157 ["ReviewEach"]
      274 LOADK                            R2 K163 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      275 SETTABLEKS                       R2 R1 K158 ["AcceptAllPrompt"]
      277 LOADK                            R2 K164 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      278 SETTABLEKS                       R2 R1 K159 ["AcceptAllSession"]
      280 SETTABLEKS                       R1 R0 K165 ["ScriptChangeConfirmation"]
      282 DUPTABLE                         R1 K166 [{"Icon", "Expand"}]
      283 LOADK                            R2 K167 ["Assistant-Summarized-Icon"]
      284 SETTABLEKS                       R2 R1 K37 ["Icon"]
      286 LOADK                            R2 K168 ["Assistant-Summarized-Expand"]
      287 SETTABLEKS                       R2 R1 K100 ["Expand"]
      289 SETTABLEKS                       R1 R0 K169 ["Summarized"]
      291 DUPTABLE                         R1 K171 [{"Title"}]
      292 LOADK                            R2 K172 ["Assistant-ReadFile-Title"]
      293 SETTABLEKS                       R2 R1 K170 ["Title"]
      295 SETTABLEKS                       R1 R0 K173 ["ReadFile"]
      297 DUPTABLE                         R1 K177 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      298 LOADK                            R2 K178 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      299 SETTABLEKS                       R2 R1 K174 ["AddIntegrationDialog"]
      301 LOADK                            R2 K179 ["Assistant-IntegrationMenu-TabContent"]
      302 SETTABLEKS                       R2 R1 K175 ["TabContent"]
      304 LOADK                            R2 K180 ["Assistant-IntegrationMenu-EmptyState"]
      305 SETTABLEKS                       R2 R1 K176 ["EmptyState"]
      307 SETTABLEKS                       R1 R0 K181 ["IntegrationMenu"]
      309 DUPTABLE                         R1 K186 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      310 LOADK                            R2 K187 ["Assistant-IntegrationItem-Dialog"]
      311 SETTABLEKS                       R2 R1 K182 ["Dialog"]
      313 LOADK                            R2 K188 ["Assistant-IntegrationItem-Header"]
      314 SETTABLEKS                       R2 R1 K7 ["Header"]
      316 LOADK                            R2 K189 ["Assistant-IntegrationItem-ToolsContainer"]
      317 SETTABLEKS                       R2 R1 K183 ["ToolsContainer"]
      319 DUPCLOSURE                       R2 K190 [PROTO_0]
      320 SETTABLEKS                       R2 R1 K184 ["ToolPill"]
      322 DUPTABLE                         R2 K194 [{"Toggle", "OverflowButton", "OverflowContent"}]
      323 LOADK                            R3 K195 ["Assistant-IntegrationItem-Actions-Toggle"]
      324 SETTABLEKS                       R3 R2 K191 ["Toggle"]
      326 LOADK                            R3 K196 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      327 SETTABLEKS                       R3 R2 K192 ["OverflowButton"]
      329 LOADK                            R3 K197 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      330 SETTABLEKS                       R3 R2 K193 ["OverflowContent"]
      332 SETTABLEKS                       R2 R1 K185 ["Actions"]
      334 SETTABLEKS                       R1 R0 K198 ["IntegrationItem"]
      336 DUPTABLE                         R1 K203 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      337 LOADK                            R2 K204 ["Assistant-McpSetup-Toggle"]
      338 SETTABLEKS                       R2 R1 K191 ["Toggle"]
      340 LOADK                            R2 K205 ["Assistant-McpSetup-StartupCommandLabel"]
      341 SETTABLEKS                       R2 R1 K199 ["StartupCommandLabel"]
      343 LOADK                            R2 K206 ["Assistant-McpSetup-JsonConfigLabel"]
      344 SETTABLEKS                       R2 R1 K200 ["JsonConfigLabel"]
      346 LOADK                            R2 K207 ["Assistant-McpSetup-StartupCommandCopy"]
      347 SETTABLEKS                       R2 R1 K201 ["StartupCommandCopy"]
      349 LOADK                            R2 K208 ["Assistant-McpSetup-JsonConfigCopy"]
      350 SETTABLEKS                       R2 R1 K202 ["JsonConfigCopy"]
      352 SETTABLEKS                       R1 R0 K209 ["McpSetup"]
      354 DUPCLOSURE                       R1 K210 [PROTO_1]
      355 SETTABLEKS                       R1 R0 K211 ["ProviderCheckbox"]
      357 DUPTABLE                         R1 K216 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      358 DUPCLOSURE                       R2 K217 [PROTO_2]
      359 SETTABLEKS                       R2 R1 K212 ["Display"]
      361 DUPCLOSURE                       R2 K218 [PROTO_3]
      362 SETTABLEKS                       R2 R1 K213 ["EditButton"]
      364 DUPCLOSURE                       R2 K219 [PROTO_4]
      365 SETTABLEKS                       R2 R1 K23 ["Input"]
      367 DUPCLOSURE                       R2 K220 [PROTO_5]
      368 SETTABLEKS                       R2 R1 K214 ["SaveButton"]
      370 DUPCLOSURE                       R2 K221 [PROTO_6]
      371 SETTABLEKS                       R2 R1 K215 ["CancelButton"]
      373 SETTABLEKS                       R1 R0 K222 ["APIKey"]
      375 DUPTABLE                         R1 K224 [{"Remove"}]
      376 LOADK                            R2 K225 ["Assistant-AttachedImagePreview-Remove"]
      377 SETTABLEKS                       R2 R1 K223 ["Remove"]
      379 SETTABLEKS                       R1 R0 K226 ["AttachedImagePreview"]
      381 GETIMPORT                        R1 K228 [pcall]
      383 DUPCLOSURE                       R2 K229 [PROTO_7]
      384 CALL                             R1 1 2
      385 JUMPIFNOT                        R1 ; [+8]
      386 NEWTABLE                         R3 0 0
      388 DUPCLOSURE                       R4 K230 [PROTO_8]
      389 CAPTURE                          VAL R4
      390 CAPTURE                          VAL R3
      391 MOVE                             R5 R4
      392 MOVE                             R6 R0
      393 CALL                             R5 1 0
      394 RETURN                           R0 1
