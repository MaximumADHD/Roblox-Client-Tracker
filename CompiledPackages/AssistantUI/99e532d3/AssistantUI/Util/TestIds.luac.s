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
        1 DUPTABLE                         R0 K31 [{"Header", "ThreadsMenu", "ThreadEntry", "ThreadOptionsMenu", "RenameThreadDialog", "InputArea", "MessageActions", "GenerationIndicator", "ModelQualityWarning", "ServerManagement", "McpServer", "SlashCommandMenu", "ToolMenuView", "ModelPicker", "Carousel", "CarouselItem", "Alert", "ImageContent", "AssetVariation", "MaterialGen", "MeshGen", "RunCode", "Thinking", "ToolConfirmation", "ScriptChangeConfirmation", "Summarized", "IntegrationMenu", "IntegrationItem", "McpSetup", "ProviderCheckbox", "APIKey"}]
        2 DUPTABLE                         R1 K35 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent"}]
        3 LOADK                            R2 K36 ["Assistant-Header-ToggleThreadsMenu"]
        4 SETTABLEKS                       R2 R1 K32 ["ToggleThreadsMenu"]
        6 LOADK                            R2 K37 ["Assistant-Header-SettingsButton"]
        7 SETTABLEKS                       R2 R1 K33 ["SettingsButton"]
        9 LOADK                            R2 K38 ["Assistant-Header-SettingsContent"]
       10 SETTABLEKS                       R2 R1 K34 ["SettingsContent"]
       12 SETTABLEKS                       R1 R0 K0 ["Header"]
       14 DUPTABLE                         R1 K42 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
       15 LOADK                            R2 K43 ["Assistant-ThreadsMenu-Container"]
       16 SETTABLEKS                       R2 R1 K39 ["Container"]
       18 LOADK                            R2 K44 ["Assistant-ThreadsMenu-ExistingThreadButton"]
       19 SETTABLEKS                       R2 R1 K40 ["ExistingThreadButton"]
       21 LOADK                            R2 K45 ["Assistant-ThreadsMenu-AddThreadButton"]
       22 SETTABLEKS                       R2 R1 K41 ["AddThreadButton"]
       24 SETTABLEKS                       R1 R0 K1 ["ThreadsMenu"]
       26 DUPTABLE                         R1 K47 [{"OptionsButton"}]
       27 LOADK                            R2 K48 ["Assistant-ThreadEntry-OptionsButton"]
       28 SETTABLEKS                       R2 R1 K46 ["OptionsButton"]
       30 SETTABLEKS                       R1 R0 K2 ["ThreadEntry"]
       32 DUPTABLE                         R1 K49 [{"Container"}]
       33 LOADK                            R2 K50 ["Assistant-ThreadOptionsMenu-Container"]
       34 SETTABLEKS                       R2 R1 K39 ["Container"]
       36 SETTABLEKS                       R1 R0 K3 ["ThreadOptionsMenu"]
       38 DUPTABLE                         R1 K52 [{"Container", "Input"}]
       39 LOADK                            R2 K53 ["Assistant-RenameThreadDialog-Container"]
       40 SETTABLEKS                       R2 R1 K39 ["Container"]
       42 LOADK                            R2 K54 ["Assistant-RenameThreadDialog-Input"]
       43 SETTABLEKS                       R2 R1 K51 ["Input"]
       45 SETTABLEKS                       R1 R0 K4 ["RenameThreadDialog"]
       47 DUPTABLE                         R1 K59 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "Footer"}]
       48 LOADK                            R2 K60 ["Assistant-InputArea-Container"]
       49 SETTABLEKS                       R2 R1 K39 ["Container"]
       51 LOADK                            R2 K61 ["Assistant-InputArea-StopButton"]
       52 SETTABLEKS                       R2 R1 K55 ["StopButton"]
       54 LOADK                            R2 K62 ["Assistant-InputArea-AttachImageButton"]
       55 SETTABLEKS                       R2 R1 K56 ["AttachImageButton"]
       57 LOADK                            R2 K63 ["Assistant-InputArea-AttachedImagesPreview"]
       58 SETTABLEKS                       R2 R1 K57 ["AttachedImagesPreview"]
       60 DUPTABLE                         R2 K65 [{"Container", "Icon"}]
       61 LOADK                            R3 K66 ["Assistant-InputArea-Footer-Container"]
       62 SETTABLEKS                       R3 R2 K39 ["Container"]
       64 LOADK                            R3 K67 ["Assistant-InputArea-Footer-Icon"]
       65 SETTABLEKS                       R3 R2 K64 ["Icon"]
       67 SETTABLEKS                       R2 R1 K58 ["Footer"]
       69 SETTABLEKS                       R1 R0 K5 ["InputArea"]
       71 DUPTABLE                         R1 K71 [{"ThumbsUp", "ThumbsDown", "Retry"}]
       72 LOADK                            R2 K72 ["Assistant-MessageActions-ThumbsUp"]
       73 SETTABLEKS                       R2 R1 K68 ["ThumbsUp"]
       75 LOADK                            R2 K73 ["Assistant-MessageActions-ThumbsDown"]
       76 SETTABLEKS                       R2 R1 K69 ["ThumbsDown"]
       78 LOADK                            R2 K74 ["Assistant-MessageActions-Retry"]
       79 SETTABLEKS                       R2 R1 K70 ["Retry"]
       81 SETTABLEKS                       R1 R0 K6 ["MessageActions"]
       83 LOADK                            R1 K75 ["Assistant-GenerationIndicator"]
       84 SETTABLEKS                       R1 R0 K7 ["GenerationIndicator"]
       86 LOADK                            R1 K76 ["Assistant-ModelQualityWarning"]
       87 SETTABLEKS                       R1 R0 K8 ["ModelQualityWarning"]
       89 DUPTABLE                         R1 K78 [{"Button"}]
       90 LOADK                            R2 K79 ["Assistant-ServerManagement-Button"]
       91 SETTABLEKS                       R2 R1 K77 ["Button"]
       93 SETTABLEKS                       R1 R0 K9 ["ServerManagement"]
       95 DUPTABLE                         R1 K82 [{"Checkbox", "CheckboxInput"}]
       96 LOADK                            R2 K83 ["Assistant-McpServer-Checkbox"]
       97 SETTABLEKS                       R2 R1 K80 ["Checkbox"]
       99 LOADK                            R2 K84 ["Assistant-McpServer-Checkbox--container"]
      100 SETTABLEKS                       R2 R1 K81 ["CheckboxInput"]
      102 SETTABLEKS                       R1 R0 K10 ["McpServer"]
      104 DUPTABLE                         R1 K86 [{"Container", "Item"}]
      105 LOADK                            R2 K87 ["Assistant-SlashCommandMenu-Container"]
      106 SETTABLEKS                       R2 R1 K39 ["Container"]
      108 DUPTABLE                         R2 K89 [{"Container", "Command"}]
      109 LOADK                            R3 K90 ["Assistant-SlashCommandMenu-Item-Container"]
      110 SETTABLEKS                       R3 R2 K39 ["Container"]
      112 LOADK                            R3 K91 ["Assistant-SlashCommandMenu-Item-Command"]
      113 SETTABLEKS                       R3 R2 K88 ["Command"]
      115 SETTABLEKS                       R2 R1 K85 ["Item"]
      117 SETTABLEKS                       R1 R0 K11 ["SlashCommandMenu"]
      119 DUPTABLE                         R1 K93 [{"Container", "Option"}]
      120 LOADK                            R2 K94 ["Assistant-ToolMenuView-Container"]
      121 SETTABLEKS                       R2 R1 K39 ["Container"]
      123 DUPTABLE                         R2 K95 [{"Container", "Checkbox"}]
      124 LOADK                            R3 K96 ["Assistant-ToolMenuView-Option-Container"]
      125 SETTABLEKS                       R3 R2 K39 ["Container"]
      127 LOADK                            R3 K97 ["Assistant-ToolMenuView-Option-Checkbox"]
      128 SETTABLEKS                       R3 R2 K80 ["Checkbox"]
      130 SETTABLEKS                       R2 R1 K92 ["Option"]
      132 SETTABLEKS                       R1 R0 K12 ["ToolMenuView"]
      134 DUPTABLE                         R1 K99 [{"Container", "Dropdown"}]
      135 LOADK                            R2 K100 ["Assistant-ModelPicker-Container"]
      136 SETTABLEKS                       R2 R1 K39 ["Container"]
      138 LOADK                            R2 K101 ["Assistant-ModelPicker-Dropdown"]
      139 SETTABLEKS                       R2 R1 K98 ["Dropdown"]
      141 SETTABLEKS                       R1 R0 K13 ["ModelPicker"]
      143 DUPTABLE                         R1 K49 [{"Container"}]
      144 LOADK                            R2 K102 ["Assistant-Carousel-Container"]
      145 SETTABLEKS                       R2 R1 K39 ["Container"]
      147 SETTABLEKS                       R1 R0 K14 ["Carousel"]
      149 DUPTABLE                         R1 K104 [{"Selected"}]
      150 LOADK                            R2 K105 ["Assistant-CarouselItem-Selected"]
      151 SETTABLEKS                       R2 R1 K103 ["Selected"]
      153 SETTABLEKS                       R1 R0 K15 ["CarouselItem"]
      155 DUPTABLE                         R1 K109 [{"Continue", "EditApiKeys", "Close"}]
      156 LOADK                            R2 K110 ["Assistant-Alert-Continue"]
      157 SETTABLEKS                       R2 R1 K106 ["Continue"]
      159 LOADK                            R2 K111 ["Assistant-Alert-EditApiKeys"]
      160 SETTABLEKS                       R2 R1 K107 ["EditApiKeys"]
      162 LOADK                            R2 K112 ["Assistant-Alert-Close"]
      163 SETTABLEKS                       R2 R1 K108 ["Close"]
      165 SETTABLEKS                       R1 R0 K16 ["Alert"]
      167 DUPTABLE                         R1 K115 [{"Image", "Expand"}]
      168 LOADK                            R2 K116 ["Assistant-ImageContent-Image"]
      169 SETTABLEKS                       R2 R1 K113 ["Image"]
      171 LOADK                            R2 K117 ["Assistant-ImageContent-Expand"]
      172 SETTABLEKS                       R2 R1 K114 ["Expand"]
      174 SETTABLEKS                       R1 R0 K17 ["ImageContent"]
      176 DUPTABLE                         R1 K118 [{"Expand"}]
      177 LOADK                            R2 K119 ["Assistant-AssetVariation-Expand"]
      178 SETTABLEKS                       R2 R1 K114 ["Expand"]
      180 SETTABLEKS                       R1 R0 K18 ["AssetVariation"]
      182 DUPTABLE                         R1 K122 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      183 LOADK                            R2 K123 ["Assistant-MaterialGen-Expand"]
      184 SETTABLEKS                       R2 R1 K114 ["Expand"]
      186 LOADK                            R2 K124 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      187 SETTABLEKS                       R2 R1 K120 ["StudsPerTileValueBar"]
      189 LOADK                            R2 K125 ["Assistant-MaterialGen-OrganicPatternToggle"]
      190 SETTABLEKS                       R2 R1 K121 ["OrganicPatternToggle"]
      192 SETTABLEKS                       R1 R0 K19 ["MaterialGen"]
      194 DUPTABLE                         R1 K134 [{"Expand", "PreviewImage", "LastPreview", "NextPreview", "UseSelection", "Cancel", "Regenerate", "Publish", "Insert"}]
      195 LOADK                            R2 K135 ["Assistant-MeshGen-Expand"]
      196 SETTABLEKS                       R2 R1 K114 ["Expand"]
      198 LOADK                            R2 K136 ["Assistant-MeshGen-PreviewImage"]
      199 SETTABLEKS                       R2 R1 K126 ["PreviewImage"]
      201 LOADK                            R2 K137 ["Assistant-MeshGen-LastPreview"]
      202 SETTABLEKS                       R2 R1 K127 ["LastPreview"]
      204 LOADK                            R2 K138 ["Assistant-MeshGen-NextPreview"]
      205 SETTABLEKS                       R2 R1 K128 ["NextPreview"]
      207 LOADK                            R2 K139 ["Assistant-MeshGen-UseSelection"]
      208 SETTABLEKS                       R2 R1 K129 ["UseSelection"]
      210 LOADK                            R2 K140 ["Assistant-MeshGen-Cancel"]
      211 SETTABLEKS                       R2 R1 K130 ["Cancel"]
      213 LOADK                            R2 K141 ["Assistant-MeshGen-Regenerate"]
      214 SETTABLEKS                       R2 R1 K131 ["Regenerate"]
      216 LOADK                            R2 K142 ["Assistant-MeshGen-Publish"]
      217 SETTABLEKS                       R2 R1 K132 ["Publish"]
      219 LOADK                            R2 K143 ["Assistant-MeshGen-Insert"]
      220 SETTABLEKS                       R2 R1 K133 ["Insert"]
      222 SETTABLEKS                       R1 R0 K20 ["MeshGen"]
      224 DUPTABLE                         R1 K147 [{"Expand", "Copy", "Run", "Stop"}]
      225 LOADK                            R2 K148 ["Assistant-RunCode-Expand"]
      226 SETTABLEKS                       R2 R1 K114 ["Expand"]
      228 LOADK                            R2 K149 ["Assistant-RunCode-Copy"]
      229 SETTABLEKS                       R2 R1 K144 ["Copy"]
      231 LOADK                            R2 K150 ["Assistant-RunCode-Run"]
      232 SETTABLEKS                       R2 R1 K145 ["Run"]
      234 LOADK                            R2 K151 ["Assistant-RunCode-Stop"]
      235 SETTABLEKS                       R2 R1 K146 ["Stop"]
      237 SETTABLEKS                       R1 R0 K21 ["RunCode"]
      239 DUPTABLE                         R1 K118 [{"Expand"}]
      240 LOADK                            R2 K152 ["Assistant-Thinking-Expand"]
      241 SETTABLEKS                       R2 R1 K114 ["Expand"]
      243 SETTABLEKS                       R1 R0 K22 ["Thinking"]
      245 DUPTABLE                         R1 K157 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      246 LOADK                            R2 K158 ["Assistant-ToolConfirmation-Warning"]
      247 SETTABLEKS                       R2 R1 K153 ["Warning"]
      249 LOADK                            R2 K159 ["Assistant-ToolConfirmation-Accept"]
      250 SETTABLEKS                       R2 R1 K154 ["Accept"]
      252 LOADK                            R2 K160 ["Assistant-ToolConfirmation-Reject"]
      253 SETTABLEKS                       R2 R1 K155 ["Reject"]
      255 LOADK                            R2 K161 ["Assistant-ToolConfirmation-AlwaysAccept"]
      256 SETTABLEKS                       R2 R1 K156 ["AlwaysAccept"]
      258 SETTABLEKS                       R1 R0 K23 ["ToolConfirmation"]
      260 DUPTABLE                         R1 K165 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      261 LOADK                            R2 K166 ["Assistant-ScriptChangeConfirmation-Warning"]
      262 SETTABLEKS                       R2 R1 K153 ["Warning"]
      264 LOADK                            R2 K167 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      265 SETTABLEKS                       R2 R1 K162 ["ReviewEach"]
      267 LOADK                            R2 K168 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      268 SETTABLEKS                       R2 R1 K163 ["AcceptAllPrompt"]
      270 LOADK                            R2 K169 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      271 SETTABLEKS                       R2 R1 K164 ["AcceptAllSession"]
      273 SETTABLEKS                       R1 R0 K24 ["ScriptChangeConfirmation"]
      275 DUPTABLE                         R1 K170 [{"Icon"}]
      276 LOADK                            R2 K171 ["Assistant-Summarized-Icon"]
      277 SETTABLEKS                       R2 R1 K64 ["Icon"]
      279 SETTABLEKS                       R1 R0 K25 ["Summarized"]
      281 DUPTABLE                         R1 K175 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      282 LOADK                            R2 K176 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      283 SETTABLEKS                       R2 R1 K172 ["AddIntegrationDialog"]
      285 LOADK                            R2 K177 ["Assistant-IntegrationMenu-TabContent"]
      286 SETTABLEKS                       R2 R1 K173 ["TabContent"]
      288 LOADK                            R2 K178 ["Assistant-IntegrationMenu-EmptyState"]
      289 SETTABLEKS                       R2 R1 K174 ["EmptyState"]
      291 SETTABLEKS                       R1 R0 K26 ["IntegrationMenu"]
      293 DUPTABLE                         R1 K183 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      294 LOADK                            R2 K184 ["Assistant-IntegrationItem-Dialog"]
      295 SETTABLEKS                       R2 R1 K179 ["Dialog"]
      297 LOADK                            R2 K185 ["Assistant-IntegrationItem-Header"]
      298 SETTABLEKS                       R2 R1 K0 ["Header"]
      300 LOADK                            R2 K186 ["Assistant-IntegrationItem-ToolsContainer"]
      301 SETTABLEKS                       R2 R1 K180 ["ToolsContainer"]
      303 DUPCLOSURE                       R2 K187 [PROTO_0]
      304 SETTABLEKS                       R2 R1 K181 ["ToolPill"]
      306 DUPTABLE                         R2 K191 [{"Toggle", "OverflowButton", "OverflowContent"}]
      307 LOADK                            R3 K192 ["Assistant-IntegrationItem-Actions-Toggle"]
      308 SETTABLEKS                       R3 R2 K188 ["Toggle"]
      310 LOADK                            R3 K193 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      311 SETTABLEKS                       R3 R2 K189 ["OverflowButton"]
      313 LOADK                            R3 K194 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      314 SETTABLEKS                       R3 R2 K190 ["OverflowContent"]
      316 SETTABLEKS                       R2 R1 K182 ["Actions"]
      318 SETTABLEKS                       R1 R0 K27 ["IntegrationItem"]
      320 DUPTABLE                         R1 K199 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      321 LOADK                            R2 K200 ["Assistant-McpSetup-Toggle"]
      322 SETTABLEKS                       R2 R1 K188 ["Toggle"]
      324 LOADK                            R2 K201 ["Assistant-McpSetup-StartupCommandLabel"]
      325 SETTABLEKS                       R2 R1 K195 ["StartupCommandLabel"]
      327 LOADK                            R2 K202 ["Assistant-McpSetup-JsonConfigLabel"]
      328 SETTABLEKS                       R2 R1 K196 ["JsonConfigLabel"]
      330 LOADK                            R2 K203 ["Assistant-McpSetup-StartupCommandCopy"]
      331 SETTABLEKS                       R2 R1 K197 ["StartupCommandCopy"]
      333 LOADK                            R2 K204 ["Assistant-McpSetup-JsonConfigCopy"]
      334 SETTABLEKS                       R2 R1 K198 ["JsonConfigCopy"]
      336 SETTABLEKS                       R1 R0 K28 ["McpSetup"]
      338 DUPCLOSURE                       R1 K205 [PROTO_1]
      339 SETTABLEKS                       R1 R0 K29 ["ProviderCheckbox"]
      341 DUPTABLE                         R1 K210 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      342 DUPCLOSURE                       R2 K211 [PROTO_2]
      343 SETTABLEKS                       R2 R1 K206 ["Display"]
      345 DUPCLOSURE                       R2 K212 [PROTO_3]
      346 SETTABLEKS                       R2 R1 K207 ["EditButton"]
      348 DUPCLOSURE                       R2 K213 [PROTO_4]
      349 SETTABLEKS                       R2 R1 K51 ["Input"]
      351 DUPCLOSURE                       R2 K214 [PROTO_5]
      352 SETTABLEKS                       R2 R1 K208 ["SaveButton"]
      354 DUPCLOSURE                       R2 K215 [PROTO_6]
      355 SETTABLEKS                       R2 R1 K209 ["CancelButton"]
      357 SETTABLEKS                       R1 R0 K30 ["APIKey"]
      359 GETIMPORT                        R1 K217 [pcall]
      361 DUPCLOSURE                       R2 K218 [PROTO_7]
      362 CALL                             R1 1 2
      363 JUMPIFNOT                        R1 ; [+8]
      364 NEWTABLE                         R3 0 0
      366 DUPCLOSURE                       R4 K219 [PROTO_8]
      367 CAPTURE                          VAL R4
      368 CAPTURE                          VAL R3
      369 MOVE                             R5 R4
      370 MOVE                             R6 R0
      371 CALL                             R5 1 0
      372 RETURN                           R0 1
