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
        1 DUPTABLE                         R0 K32 [{"Header", "ThreadsMenu", "ThreadEntry", "ThreadOptionsMenu", "RenameThreadDialog", "InputArea", "MessageActions", "GenerationIndicator", "ModelQualityWarning", "ServerManagement", "McpServer", "SlashCommandMenu", "ToolMenuView", "ModelPicker", "Carousel", "CarouselItem", "Alert", "ImageContent", "AssetVariation", "MaterialGen", "MeshGen", "RunCode", "Thinking", "ToolConfirmation", "ScriptChangeConfirmation", "Summarized", "IntegrationMenu", "IntegrationItem", "McpSetup", "ProviderCheckbox", "APIKey", "AttachedImagePreview"}]
        2 DUPTABLE                         R1 K36 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent"}]
        3 LOADK                            R2 K37 ["Assistant-Header-ToggleThreadsMenu"]
        4 SETTABLEKS                       R2 R1 K33 ["ToggleThreadsMenu"]
        6 LOADK                            R2 K38 ["Assistant-Header-SettingsButton"]
        7 SETTABLEKS                       R2 R1 K34 ["SettingsButton"]
        9 LOADK                            R2 K39 ["Assistant-Header-SettingsContent"]
       10 SETTABLEKS                       R2 R1 K35 ["SettingsContent"]
       12 SETTABLEKS                       R1 R0 K0 ["Header"]
       14 DUPTABLE                         R1 K43 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
       15 LOADK                            R2 K44 ["Assistant-ThreadsMenu-Container"]
       16 SETTABLEKS                       R2 R1 K40 ["Container"]
       18 LOADK                            R2 K45 ["Assistant-ThreadsMenu-ExistingThreadButton"]
       19 SETTABLEKS                       R2 R1 K41 ["ExistingThreadButton"]
       21 LOADK                            R2 K46 ["Assistant-ThreadsMenu-AddThreadButton"]
       22 SETTABLEKS                       R2 R1 K42 ["AddThreadButton"]
       24 SETTABLEKS                       R1 R0 K1 ["ThreadsMenu"]
       26 DUPTABLE                         R1 K48 [{"OptionsButton"}]
       27 LOADK                            R2 K49 ["Assistant-ThreadEntry-OptionsButton"]
       28 SETTABLEKS                       R2 R1 K47 ["OptionsButton"]
       30 SETTABLEKS                       R1 R0 K2 ["ThreadEntry"]
       32 DUPTABLE                         R1 K50 [{"Container"}]
       33 LOADK                            R2 K51 ["Assistant-ThreadOptionsMenu-Container"]
       34 SETTABLEKS                       R2 R1 K40 ["Container"]
       36 SETTABLEKS                       R1 R0 K3 ["ThreadOptionsMenu"]
       38 DUPTABLE                         R1 K53 [{"Container", "Input"}]
       39 LOADK                            R2 K54 ["Assistant-RenameThreadDialog-Container"]
       40 SETTABLEKS                       R2 R1 K40 ["Container"]
       42 LOADK                            R2 K55 ["Assistant-RenameThreadDialog-Input"]
       43 SETTABLEKS                       R2 R1 K52 ["Input"]
       45 SETTABLEKS                       R1 R0 K4 ["RenameThreadDialog"]
       47 DUPTABLE                         R1 K60 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "Footer"}]
       48 LOADK                            R2 K61 ["Assistant-InputArea-Container"]
       49 SETTABLEKS                       R2 R1 K40 ["Container"]
       51 LOADK                            R2 K62 ["Assistant-InputArea-StopButton"]
       52 SETTABLEKS                       R2 R1 K56 ["StopButton"]
       54 LOADK                            R2 K63 ["Assistant-InputArea-AttachImageButton"]
       55 SETTABLEKS                       R2 R1 K57 ["AttachImageButton"]
       57 LOADK                            R2 K64 ["Assistant-InputArea-AttachedImagesPreview"]
       58 SETTABLEKS                       R2 R1 K58 ["AttachedImagesPreview"]
       60 DUPTABLE                         R2 K66 [{"Container", "Icon"}]
       61 LOADK                            R3 K67 ["Assistant-InputArea-Footer-Container"]
       62 SETTABLEKS                       R3 R2 K40 ["Container"]
       64 LOADK                            R3 K68 ["Assistant-InputArea-Footer-Icon"]
       65 SETTABLEKS                       R3 R2 K65 ["Icon"]
       67 SETTABLEKS                       R2 R1 K59 ["Footer"]
       69 SETTABLEKS                       R1 R0 K5 ["InputArea"]
       71 DUPTABLE                         R1 K72 [{"Container", "ThumbsUp", "ThumbsDown", "Retry"}]
       72 LOADK                            R2 K73 ["Assistant-MessageActions-Container"]
       73 SETTABLEKS                       R2 R1 K40 ["Container"]
       75 LOADK                            R2 K74 ["Assistant-MessageActions-ThumbsUp"]
       76 SETTABLEKS                       R2 R1 K69 ["ThumbsUp"]
       78 LOADK                            R2 K75 ["Assistant-MessageActions-ThumbsDown"]
       79 SETTABLEKS                       R2 R1 K70 ["ThumbsDown"]
       81 LOADK                            R2 K76 ["Assistant-MessageActions-Retry"]
       82 SETTABLEKS                       R2 R1 K71 ["Retry"]
       84 SETTABLEKS                       R1 R0 K6 ["MessageActions"]
       86 LOADK                            R1 K77 ["Assistant-GenerationIndicator"]
       87 SETTABLEKS                       R1 R0 K7 ["GenerationIndicator"]
       89 LOADK                            R1 K78 ["Assistant-ModelQualityWarning"]
       90 SETTABLEKS                       R1 R0 K8 ["ModelQualityWarning"]
       92 DUPTABLE                         R1 K80 [{"Button"}]
       93 LOADK                            R2 K81 ["Assistant-ServerManagement-Button"]
       94 SETTABLEKS                       R2 R1 K79 ["Button"]
       96 SETTABLEKS                       R1 R0 K9 ["ServerManagement"]
       98 DUPTABLE                         R1 K84 [{"Checkbox", "CheckboxInput"}]
       99 LOADK                            R2 K85 ["Assistant-McpServer-Checkbox"]
      100 SETTABLEKS                       R2 R1 K82 ["Checkbox"]
      102 LOADK                            R2 K86 ["Assistant-McpServer-Checkbox--container"]
      103 SETTABLEKS                       R2 R1 K83 ["CheckboxInput"]
      105 SETTABLEKS                       R1 R0 K10 ["McpServer"]
      107 DUPTABLE                         R1 K88 [{"Container", "Item"}]
      108 LOADK                            R2 K89 ["Assistant-SlashCommandMenu-Container"]
      109 SETTABLEKS                       R2 R1 K40 ["Container"]
      111 DUPTABLE                         R2 K91 [{"Container", "Command"}]
      112 LOADK                            R3 K92 ["Assistant-SlashCommandMenu-Item-Container"]
      113 SETTABLEKS                       R3 R2 K40 ["Container"]
      115 LOADK                            R3 K93 ["Assistant-SlashCommandMenu-Item-Command"]
      116 SETTABLEKS                       R3 R2 K90 ["Command"]
      118 SETTABLEKS                       R2 R1 K87 ["Item"]
      120 SETTABLEKS                       R1 R0 K11 ["SlashCommandMenu"]
      122 DUPTABLE                         R1 K95 [{"Container", "Option"}]
      123 LOADK                            R2 K96 ["Assistant-ToolMenuView-Container"]
      124 SETTABLEKS                       R2 R1 K40 ["Container"]
      126 DUPTABLE                         R2 K97 [{"Container", "Checkbox"}]
      127 LOADK                            R3 K98 ["Assistant-ToolMenuView-Option-Container"]
      128 SETTABLEKS                       R3 R2 K40 ["Container"]
      130 LOADK                            R3 K99 ["Assistant-ToolMenuView-Option-Checkbox"]
      131 SETTABLEKS                       R3 R2 K82 ["Checkbox"]
      133 SETTABLEKS                       R2 R1 K94 ["Option"]
      135 SETTABLEKS                       R1 R0 K12 ["ToolMenuView"]
      137 DUPTABLE                         R1 K101 [{"Container", "Dropdown"}]
      138 LOADK                            R2 K102 ["Assistant-ModelPicker-Container"]
      139 SETTABLEKS                       R2 R1 K40 ["Container"]
      141 LOADK                            R2 K103 ["Assistant-ModelPicker-Dropdown"]
      142 SETTABLEKS                       R2 R1 K100 ["Dropdown"]
      144 SETTABLEKS                       R1 R0 K13 ["ModelPicker"]
      146 DUPTABLE                         R1 K50 [{"Container"}]
      147 LOADK                            R2 K104 ["Assistant-Carousel-Container"]
      148 SETTABLEKS                       R2 R1 K40 ["Container"]
      150 SETTABLEKS                       R1 R0 K14 ["Carousel"]
      152 DUPTABLE                         R1 K106 [{"Selected"}]
      153 LOADK                            R2 K107 ["Assistant-CarouselItem-Selected"]
      154 SETTABLEKS                       R2 R1 K105 ["Selected"]
      156 SETTABLEKS                       R1 R0 K15 ["CarouselItem"]
      158 DUPTABLE                         R1 K111 [{"Continue", "EditApiKeys", "Close"}]
      159 LOADK                            R2 K112 ["Assistant-Alert-Continue"]
      160 SETTABLEKS                       R2 R1 K108 ["Continue"]
      162 LOADK                            R2 K113 ["Assistant-Alert-EditApiKeys"]
      163 SETTABLEKS                       R2 R1 K109 ["EditApiKeys"]
      165 LOADK                            R2 K114 ["Assistant-Alert-Close"]
      166 SETTABLEKS                       R2 R1 K110 ["Close"]
      168 SETTABLEKS                       R1 R0 K16 ["Alert"]
      170 DUPTABLE                         R1 K117 [{"Image", "Expand"}]
      171 LOADK                            R2 K118 ["Assistant-ImageContent-Image"]
      172 SETTABLEKS                       R2 R1 K115 ["Image"]
      174 LOADK                            R2 K119 ["Assistant-ImageContent-Expand"]
      175 SETTABLEKS                       R2 R1 K116 ["Expand"]
      177 SETTABLEKS                       R1 R0 K17 ["ImageContent"]
      179 DUPTABLE                         R1 K120 [{"Expand"}]
      180 LOADK                            R2 K121 ["Assistant-AssetVariation-Expand"]
      181 SETTABLEKS                       R2 R1 K116 ["Expand"]
      183 SETTABLEKS                       R1 R0 K18 ["AssetVariation"]
      185 DUPTABLE                         R1 K124 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      186 LOADK                            R2 K125 ["Assistant-MaterialGen-Expand"]
      187 SETTABLEKS                       R2 R1 K116 ["Expand"]
      189 LOADK                            R2 K126 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      190 SETTABLEKS                       R2 R1 K122 ["StudsPerTileValueBar"]
      192 LOADK                            R2 K127 ["Assistant-MaterialGen-OrganicPatternToggle"]
      193 SETTABLEKS                       R2 R1 K123 ["OrganicPatternToggle"]
      195 SETTABLEKS                       R1 R0 K19 ["MaterialGen"]
      197 DUPTABLE                         R1 K137 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles", "LastPreview", "NextPreview", "Cancel", "Regenerate", "Publish", "Insert"}]
      198 LOADK                            R2 K138 ["Assistant-MeshGen-Expand"]
      199 SETTABLEKS                       R2 R1 K116 ["Expand"]
      201 LOADK                            R2 K139 ["Assistant-MeshGen-PreviewImage"]
      202 SETTABLEKS                       R2 R1 K128 ["PreviewImage"]
      204 LOADK                            R2 K140 ["Assistant-MeshGen-UseSelection"]
      205 SETTABLEKS                       R2 R1 K129 ["UseSelection"]
      207 LOADK                            R2 K141 ["Assistant-MeshGen-MaxTriangles"]
      208 SETTABLEKS                       R2 R1 K130 ["MaxTriangles"]
      210 LOADK                            R2 K142 ["Assistant-MeshGen-LastPreview"]
      211 SETTABLEKS                       R2 R1 K131 ["LastPreview"]
      213 LOADK                            R2 K143 ["Assistant-MeshGen-NextPreview"]
      214 SETTABLEKS                       R2 R1 K132 ["NextPreview"]
      216 LOADK                            R2 K144 ["Assistant-MeshGen-Cancel"]
      217 SETTABLEKS                       R2 R1 K133 ["Cancel"]
      219 LOADK                            R2 K145 ["Assistant-MeshGen-Regenerate"]
      220 SETTABLEKS                       R2 R1 K134 ["Regenerate"]
      222 LOADK                            R2 K146 ["Assistant-MeshGen-Publish"]
      223 SETTABLEKS                       R2 R1 K135 ["Publish"]
      225 LOADK                            R2 K147 ["Assistant-MeshGen-Insert"]
      226 SETTABLEKS                       R2 R1 K136 ["Insert"]
      228 SETTABLEKS                       R1 R0 K20 ["MeshGen"]
      230 DUPTABLE                         R1 K151 [{"Expand", "Copy", "Run", "Stop"}]
      231 LOADK                            R2 K152 ["Assistant-RunCode-Expand"]
      232 SETTABLEKS                       R2 R1 K116 ["Expand"]
      234 LOADK                            R2 K153 ["Assistant-RunCode-Copy"]
      235 SETTABLEKS                       R2 R1 K148 ["Copy"]
      237 LOADK                            R2 K154 ["Assistant-RunCode-Run"]
      238 SETTABLEKS                       R2 R1 K149 ["Run"]
      240 LOADK                            R2 K155 ["Assistant-RunCode-Stop"]
      241 SETTABLEKS                       R2 R1 K150 ["Stop"]
      243 SETTABLEKS                       R1 R0 K21 ["RunCode"]
      245 DUPTABLE                         R1 K120 [{"Expand"}]
      246 LOADK                            R2 K156 ["Assistant-Thinking-Expand"]
      247 SETTABLEKS                       R2 R1 K116 ["Expand"]
      249 SETTABLEKS                       R1 R0 K22 ["Thinking"]
      251 DUPTABLE                         R1 K161 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      252 LOADK                            R2 K162 ["Assistant-ToolConfirmation-Warning"]
      253 SETTABLEKS                       R2 R1 K157 ["Warning"]
      255 LOADK                            R2 K163 ["Assistant-ToolConfirmation-Accept"]
      256 SETTABLEKS                       R2 R1 K158 ["Accept"]
      258 LOADK                            R2 K164 ["Assistant-ToolConfirmation-Reject"]
      259 SETTABLEKS                       R2 R1 K159 ["Reject"]
      261 LOADK                            R2 K165 ["Assistant-ToolConfirmation-AlwaysAccept"]
      262 SETTABLEKS                       R2 R1 K160 ["AlwaysAccept"]
      264 SETTABLEKS                       R1 R0 K23 ["ToolConfirmation"]
      266 DUPTABLE                         R1 K169 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      267 LOADK                            R2 K170 ["Assistant-ScriptChangeConfirmation-Warning"]
      268 SETTABLEKS                       R2 R1 K157 ["Warning"]
      270 LOADK                            R2 K171 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      271 SETTABLEKS                       R2 R1 K166 ["ReviewEach"]
      273 LOADK                            R2 K172 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      274 SETTABLEKS                       R2 R1 K167 ["AcceptAllPrompt"]
      276 LOADK                            R2 K173 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      277 SETTABLEKS                       R2 R1 K168 ["AcceptAllSession"]
      279 SETTABLEKS                       R1 R0 K24 ["ScriptChangeConfirmation"]
      281 DUPTABLE                         R1 K174 [{"Icon"}]
      282 LOADK                            R2 K175 ["Assistant-Summarized-Icon"]
      283 SETTABLEKS                       R2 R1 K65 ["Icon"]
      285 SETTABLEKS                       R1 R0 K25 ["Summarized"]
      287 DUPTABLE                         R1 K179 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      288 LOADK                            R2 K180 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      289 SETTABLEKS                       R2 R1 K176 ["AddIntegrationDialog"]
      291 LOADK                            R2 K181 ["Assistant-IntegrationMenu-TabContent"]
      292 SETTABLEKS                       R2 R1 K177 ["TabContent"]
      294 LOADK                            R2 K182 ["Assistant-IntegrationMenu-EmptyState"]
      295 SETTABLEKS                       R2 R1 K178 ["EmptyState"]
      297 SETTABLEKS                       R1 R0 K26 ["IntegrationMenu"]
      299 DUPTABLE                         R1 K187 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      300 LOADK                            R2 K188 ["Assistant-IntegrationItem-Dialog"]
      301 SETTABLEKS                       R2 R1 K183 ["Dialog"]
      303 LOADK                            R2 K189 ["Assistant-IntegrationItem-Header"]
      304 SETTABLEKS                       R2 R1 K0 ["Header"]
      306 LOADK                            R2 K190 ["Assistant-IntegrationItem-ToolsContainer"]
      307 SETTABLEKS                       R2 R1 K184 ["ToolsContainer"]
      309 DUPCLOSURE                       R2 K191 [PROTO_0]
      310 SETTABLEKS                       R2 R1 K185 ["ToolPill"]
      312 DUPTABLE                         R2 K195 [{"Toggle", "OverflowButton", "OverflowContent"}]
      313 LOADK                            R3 K196 ["Assistant-IntegrationItem-Actions-Toggle"]
      314 SETTABLEKS                       R3 R2 K192 ["Toggle"]
      316 LOADK                            R3 K197 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      317 SETTABLEKS                       R3 R2 K193 ["OverflowButton"]
      319 LOADK                            R3 K198 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      320 SETTABLEKS                       R3 R2 K194 ["OverflowContent"]
      322 SETTABLEKS                       R2 R1 K186 ["Actions"]
      324 SETTABLEKS                       R1 R0 K27 ["IntegrationItem"]
      326 DUPTABLE                         R1 K203 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      327 LOADK                            R2 K204 ["Assistant-McpSetup-Toggle"]
      328 SETTABLEKS                       R2 R1 K192 ["Toggle"]
      330 LOADK                            R2 K205 ["Assistant-McpSetup-StartupCommandLabel"]
      331 SETTABLEKS                       R2 R1 K199 ["StartupCommandLabel"]
      333 LOADK                            R2 K206 ["Assistant-McpSetup-JsonConfigLabel"]
      334 SETTABLEKS                       R2 R1 K200 ["JsonConfigLabel"]
      336 LOADK                            R2 K207 ["Assistant-McpSetup-StartupCommandCopy"]
      337 SETTABLEKS                       R2 R1 K201 ["StartupCommandCopy"]
      339 LOADK                            R2 K208 ["Assistant-McpSetup-JsonConfigCopy"]
      340 SETTABLEKS                       R2 R1 K202 ["JsonConfigCopy"]
      342 SETTABLEKS                       R1 R0 K28 ["McpSetup"]
      344 DUPCLOSURE                       R1 K209 [PROTO_1]
      345 SETTABLEKS                       R1 R0 K29 ["ProviderCheckbox"]
      347 DUPTABLE                         R1 K214 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      348 DUPCLOSURE                       R2 K215 [PROTO_2]
      349 SETTABLEKS                       R2 R1 K210 ["Display"]
      351 DUPCLOSURE                       R2 K216 [PROTO_3]
      352 SETTABLEKS                       R2 R1 K211 ["EditButton"]
      354 DUPCLOSURE                       R2 K217 [PROTO_4]
      355 SETTABLEKS                       R2 R1 K52 ["Input"]
      357 DUPCLOSURE                       R2 K218 [PROTO_5]
      358 SETTABLEKS                       R2 R1 K212 ["SaveButton"]
      360 DUPCLOSURE                       R2 K219 [PROTO_6]
      361 SETTABLEKS                       R2 R1 K213 ["CancelButton"]
      363 SETTABLEKS                       R1 R0 K30 ["APIKey"]
      365 DUPTABLE                         R1 K221 [{"Remove"}]
      366 LOADK                            R2 K222 ["Assistant-AttachedImagePreview-Remove"]
      367 SETTABLEKS                       R2 R1 K220 ["Remove"]
      369 SETTABLEKS                       R1 R0 K31 ["AttachedImagePreview"]
      371 GETIMPORT                        R1 K224 [pcall]
      373 DUPCLOSURE                       R2 K225 [PROTO_7]
      374 CALL                             R1 1 2
      375 JUMPIFNOT                        R1 ; [+8]
      376 NEWTABLE                         R3 0 0
      378 DUPCLOSURE                       R4 K226 [PROTO_8]
      379 CAPTURE                          VAL R4
      380 CAPTURE                          VAL R3
      381 MOVE                             R5 R4
      382 MOVE                             R6 R0
      383 CALL                             R5 1 0
      384 RETURN                           R0 1
