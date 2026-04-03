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
       48 DUPTABLE                         R1 K34 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "AssistantModeDropdown", "AssistantModeDropdownMenu", "Footer"}]
       49 LOADK                            R2 K35 ["Assistant-InputArea-Container"]
       50 SETTABLEKS                       R2 R1 K8 ["Container"]
       52 LOADK                            R2 K36 ["Assistant-InputArea-StopButton"]
       53 SETTABLEKS                       R2 R1 K28 ["StopButton"]
       55 LOADK                            R2 K37 ["Assistant-InputArea-AttachImageButton"]
       56 SETTABLEKS                       R2 R1 K29 ["AttachImageButton"]
       58 LOADK                            R2 K38 ["Assistant-InputArea-AttachedImagesPreview"]
       59 SETTABLEKS                       R2 R1 K30 ["AttachedImagesPreview"]
       61 LOADK                            R2 K39 ["Assistant-InputArea-AssistantModeDropdown"]
       62 SETTABLEKS                       R2 R1 K31 ["AssistantModeDropdown"]
       64 LOADK                            R2 K40 ["Assistant-InputArea-AssistantModeDropdownMenu"]
       65 SETTABLEKS                       R2 R1 K32 ["AssistantModeDropdownMenu"]
       67 DUPTABLE                         R2 K42 [{"Container", "Icon"}]
       68 LOADK                            R3 K43 ["Assistant-InputArea-Footer-Container"]
       69 SETTABLEKS                       R3 R2 K8 ["Container"]
       71 LOADK                            R3 K44 ["Assistant-InputArea-Footer-Icon"]
       72 SETTABLEKS                       R3 R2 K41 ["Icon"]
       74 SETTABLEKS                       R2 R1 K33 ["Footer"]
       76 SETTABLEKS                       R1 R0 K45 ["InputArea"]
       78 DUPTABLE                         R1 K49 [{"Container", "ThumbsUp", "ThumbsDown", "Retry"}]
       79 LOADK                            R2 K50 ["Assistant-MessageActions-Container"]
       80 SETTABLEKS                       R2 R1 K8 ["Container"]
       82 LOADK                            R2 K51 ["Assistant-MessageActions-ThumbsUp"]
       83 SETTABLEKS                       R2 R1 K46 ["ThumbsUp"]
       85 LOADK                            R2 K52 ["Assistant-MessageActions-ThumbsDown"]
       86 SETTABLEKS                       R2 R1 K47 ["ThumbsDown"]
       88 LOADK                            R2 K53 ["Assistant-MessageActions-Retry"]
       89 SETTABLEKS                       R2 R1 K48 ["Retry"]
       91 SETTABLEKS                       R1 R0 K54 ["MessageActions"]
       93 LOADK                            R1 K55 ["Assistant-GenerationIndicator"]
       94 SETTABLEKS                       R1 R0 K56 ["GenerationIndicator"]
       96 LOADK                            R1 K57 ["Assistant-ModelQualityWarning"]
       97 SETTABLEKS                       R1 R0 K58 ["ModelQualityWarning"]
       99 DUPTABLE                         R1 K60 [{"Button"}]
      100 LOADK                            R2 K61 ["Assistant-ServerManagement-Button"]
      101 SETTABLEKS                       R2 R1 K59 ["Button"]
      103 SETTABLEKS                       R1 R0 K62 ["ServerManagement"]
      105 DUPTABLE                         R1 K65 [{"Checkbox", "CheckboxInput"}]
      106 LOADK                            R2 K66 ["Assistant-McpServer-Checkbox"]
      107 SETTABLEKS                       R2 R1 K63 ["Checkbox"]
      109 LOADK                            R2 K67 ["Assistant-McpServer-Checkbox--container"]
      110 SETTABLEKS                       R2 R1 K64 ["CheckboxInput"]
      112 SETTABLEKS                       R1 R0 K68 ["McpServer"]
      114 DUPTABLE                         R1 K70 [{"Container", "Item"}]
      115 LOADK                            R2 K71 ["Assistant-SlashCommandMenu-Container"]
      116 SETTABLEKS                       R2 R1 K8 ["Container"]
      118 DUPTABLE                         R2 K73 [{"Container", "Command"}]
      119 LOADK                            R3 K74 ["Assistant-SlashCommandMenu-Item-Container"]
      120 SETTABLEKS                       R3 R2 K8 ["Container"]
      122 LOADK                            R3 K75 ["Assistant-SlashCommandMenu-Item-Command"]
      123 SETTABLEKS                       R3 R2 K72 ["Command"]
      125 SETTABLEKS                       R2 R1 K69 ["Item"]
      127 SETTABLEKS                       R1 R0 K76 ["SlashCommandMenu"]
      129 DUPTABLE                         R1 K78 [{"Container", "Option"}]
      130 LOADK                            R2 K79 ["Assistant-ToolMenuView-Container"]
      131 SETTABLEKS                       R2 R1 K8 ["Container"]
      133 DUPTABLE                         R2 K80 [{"Container", "Checkbox"}]
      134 LOADK                            R3 K81 ["Assistant-ToolMenuView-Option-Container"]
      135 SETTABLEKS                       R3 R2 K8 ["Container"]
      137 LOADK                            R3 K82 ["Assistant-ToolMenuView-Option-Checkbox"]
      138 SETTABLEKS                       R3 R2 K63 ["Checkbox"]
      140 SETTABLEKS                       R2 R1 K77 ["Option"]
      142 SETTABLEKS                       R1 R0 K83 ["ToolMenuView"]
      144 DUPTABLE                         R1 K85 [{"Container", "Dropdown"}]
      145 LOADK                            R2 K86 ["Assistant-ModelPicker-Container"]
      146 SETTABLEKS                       R2 R1 K8 ["Container"]
      148 LOADK                            R2 K87 ["Assistant-ModelPicker-Dropdown"]
      149 SETTABLEKS                       R2 R1 K84 ["Dropdown"]
      151 SETTABLEKS                       R1 R0 K88 ["ModelPicker"]
      153 DUPTABLE                         R1 K20 [{"Container"}]
      154 LOADK                            R2 K89 ["Assistant-Carousel-Container"]
      155 SETTABLEKS                       R2 R1 K8 ["Container"]
      157 SETTABLEKS                       R1 R0 K90 ["Carousel"]
      159 DUPTABLE                         R1 K92 [{"Selected"}]
      160 LOADK                            R2 K93 ["Assistant-CarouselItem-Selected"]
      161 SETTABLEKS                       R2 R1 K91 ["Selected"]
      163 SETTABLEKS                       R1 R0 K94 ["CarouselItem"]
      165 DUPTABLE                         R1 K98 [{"Continue", "EditApiKeys", "Close"}]
      166 LOADK                            R2 K99 ["Assistant-Alert-Continue"]
      167 SETTABLEKS                       R2 R1 K95 ["Continue"]
      169 LOADK                            R2 K100 ["Assistant-Alert-EditApiKeys"]
      170 SETTABLEKS                       R2 R1 K96 ["EditApiKeys"]
      172 LOADK                            R2 K101 ["Assistant-Alert-Close"]
      173 SETTABLEKS                       R2 R1 K97 ["Close"]
      175 SETTABLEKS                       R1 R0 K102 ["Alert"]
      177 DUPTABLE                         R1 K105 [{"Image", "Expand"}]
      178 LOADK                            R2 K106 ["Assistant-ImageContent-Image"]
      179 SETTABLEKS                       R2 R1 K103 ["Image"]
      181 LOADK                            R2 K107 ["Assistant-ImageContent-Expand"]
      182 SETTABLEKS                       R2 R1 K104 ["Expand"]
      184 SETTABLEKS                       R1 R0 K108 ["ImageContent"]
      186 DUPTABLE                         R1 K109 [{"Expand"}]
      187 LOADK                            R2 K110 ["Assistant-AssetVariation-Expand"]
      188 SETTABLEKS                       R2 R1 K104 ["Expand"]
      190 SETTABLEKS                       R1 R0 K111 ["AssetVariation"]
      192 DUPTABLE                         R1 K114 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      193 LOADK                            R2 K115 ["Assistant-MaterialGen-Expand"]
      194 SETTABLEKS                       R2 R1 K104 ["Expand"]
      196 LOADK                            R2 K116 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      197 SETTABLEKS                       R2 R1 K112 ["StudsPerTileValueBar"]
      199 LOADK                            R2 K117 ["Assistant-MaterialGen-OrganicPatternToggle"]
      200 SETTABLEKS                       R2 R1 K113 ["OrganicPatternToggle"]
      202 SETTABLEKS                       R1 R0 K118 ["MaterialGen"]
      204 DUPTABLE                         R1 K128 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles", "LastPreview", "NextPreview", "Cancel", "Regenerate", "Publish", "Insert"}]
      205 LOADK                            R2 K129 ["Assistant-MeshGen-Expand"]
      206 SETTABLEKS                       R2 R1 K104 ["Expand"]
      208 LOADK                            R2 K130 ["Assistant-MeshGen-PreviewImage"]
      209 SETTABLEKS                       R2 R1 K119 ["PreviewImage"]
      211 LOADK                            R2 K131 ["Assistant-MeshGen-UseSelection"]
      212 SETTABLEKS                       R2 R1 K120 ["UseSelection"]
      214 LOADK                            R2 K132 ["Assistant-MeshGen-MaxTriangles"]
      215 SETTABLEKS                       R2 R1 K121 ["MaxTriangles"]
      217 LOADK                            R2 K133 ["Assistant-MeshGen-LastPreview"]
      218 SETTABLEKS                       R2 R1 K122 ["LastPreview"]
      220 LOADK                            R2 K134 ["Assistant-MeshGen-NextPreview"]
      221 SETTABLEKS                       R2 R1 K123 ["NextPreview"]
      223 LOADK                            R2 K135 ["Assistant-MeshGen-Cancel"]
      224 SETTABLEKS                       R2 R1 K124 ["Cancel"]
      226 LOADK                            R2 K136 ["Assistant-MeshGen-Regenerate"]
      227 SETTABLEKS                       R2 R1 K125 ["Regenerate"]
      229 LOADK                            R2 K137 ["Assistant-MeshGen-Publish"]
      230 SETTABLEKS                       R2 R1 K126 ["Publish"]
      232 LOADK                            R2 K138 ["Assistant-MeshGen-Insert"]
      233 SETTABLEKS                       R2 R1 K127 ["Insert"]
      235 SETTABLEKS                       R1 R0 K139 ["MeshGen"]
      237 DUPTABLE                         R1 K143 [{"Expand", "Copy", "Run", "Stop"}]
      238 LOADK                            R2 K144 ["Assistant-RunCode-Expand"]
      239 SETTABLEKS                       R2 R1 K104 ["Expand"]
      241 LOADK                            R2 K145 ["Assistant-RunCode-Copy"]
      242 SETTABLEKS                       R2 R1 K140 ["Copy"]
      244 LOADK                            R2 K146 ["Assistant-RunCode-Run"]
      245 SETTABLEKS                       R2 R1 K141 ["Run"]
      247 LOADK                            R2 K147 ["Assistant-RunCode-Stop"]
      248 SETTABLEKS                       R2 R1 K142 ["Stop"]
      250 SETTABLEKS                       R1 R0 K148 ["RunCode"]
      252 DUPTABLE                         R1 K109 [{"Expand"}]
      253 LOADK                            R2 K149 ["Assistant-Thinking-Expand"]
      254 SETTABLEKS                       R2 R1 K104 ["Expand"]
      256 SETTABLEKS                       R1 R0 K150 ["Thinking"]
      258 DUPTABLE                         R1 K155 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      259 LOADK                            R2 K156 ["Assistant-ToolConfirmation-Warning"]
      260 SETTABLEKS                       R2 R1 K151 ["Warning"]
      262 LOADK                            R2 K157 ["Assistant-ToolConfirmation-Accept"]
      263 SETTABLEKS                       R2 R1 K152 ["Accept"]
      265 LOADK                            R2 K158 ["Assistant-ToolConfirmation-Reject"]
      266 SETTABLEKS                       R2 R1 K153 ["Reject"]
      268 LOADK                            R2 K159 ["Assistant-ToolConfirmation-AlwaysAccept"]
      269 SETTABLEKS                       R2 R1 K154 ["AlwaysAccept"]
      271 SETTABLEKS                       R1 R0 K160 ["ToolConfirmation"]
      273 DUPTABLE                         R1 K164 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      274 LOADK                            R2 K165 ["Assistant-ScriptChangeConfirmation-Warning"]
      275 SETTABLEKS                       R2 R1 K151 ["Warning"]
      277 LOADK                            R2 K166 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      278 SETTABLEKS                       R2 R1 K161 ["ReviewEach"]
      280 LOADK                            R2 K167 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      281 SETTABLEKS                       R2 R1 K162 ["AcceptAllPrompt"]
      283 LOADK                            R2 K168 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      284 SETTABLEKS                       R2 R1 K163 ["AcceptAllSession"]
      286 SETTABLEKS                       R1 R0 K169 ["ScriptChangeConfirmation"]
      288 DUPTABLE                         R1 K170 [{"Icon", "Expand"}]
      289 LOADK                            R2 K171 ["Assistant-Summarized-Icon"]
      290 SETTABLEKS                       R2 R1 K41 ["Icon"]
      292 LOADK                            R2 K172 ["Assistant-Summarized-Expand"]
      293 SETTABLEKS                       R2 R1 K104 ["Expand"]
      295 SETTABLEKS                       R1 R0 K173 ["Summarized"]
      297 DUPTABLE                         R1 K175 [{"Title"}]
      298 LOADK                            R2 K176 ["Assistant-ReadFile-Title"]
      299 SETTABLEKS                       R2 R1 K174 ["Title"]
      301 SETTABLEKS                       R1 R0 K177 ["ReadFile"]
      303 DUPTABLE                         R1 K109 [{"Expand"}]
      304 LOADK                            R2 K178 ["Assistant-InputRequested-Expand"]
      305 SETTABLEKS                       R2 R1 K104 ["Expand"]
      307 SETTABLEKS                       R1 R0 K179 ["InputRequested"]
      309 DUPTABLE                         R1 K183 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      310 LOADK                            R2 K184 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      311 SETTABLEKS                       R2 R1 K180 ["AddIntegrationDialog"]
      313 LOADK                            R2 K185 ["Assistant-IntegrationMenu-TabContent"]
      314 SETTABLEKS                       R2 R1 K181 ["TabContent"]
      316 LOADK                            R2 K186 ["Assistant-IntegrationMenu-EmptyState"]
      317 SETTABLEKS                       R2 R1 K182 ["EmptyState"]
      319 SETTABLEKS                       R1 R0 K187 ["IntegrationMenu"]
      321 DUPTABLE                         R1 K192 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      322 LOADK                            R2 K193 ["Assistant-IntegrationItem-Dialog"]
      323 SETTABLEKS                       R2 R1 K188 ["Dialog"]
      325 LOADK                            R2 K194 ["Assistant-IntegrationItem-Header"]
      326 SETTABLEKS                       R2 R1 K7 ["Header"]
      328 LOADK                            R2 K195 ["Assistant-IntegrationItem-ToolsContainer"]
      329 SETTABLEKS                       R2 R1 K189 ["ToolsContainer"]
      331 DUPCLOSURE                       R2 K196 [PROTO_0]
      332 SETTABLEKS                       R2 R1 K190 ["ToolPill"]
      334 DUPTABLE                         R2 K200 [{"Toggle", "OverflowButton", "OverflowContent"}]
      335 LOADK                            R3 K201 ["Assistant-IntegrationItem-Actions-Toggle"]
      336 SETTABLEKS                       R3 R2 K197 ["Toggle"]
      338 LOADK                            R3 K202 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      339 SETTABLEKS                       R3 R2 K198 ["OverflowButton"]
      341 LOADK                            R3 K203 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      342 SETTABLEKS                       R3 R2 K199 ["OverflowContent"]
      344 SETTABLEKS                       R2 R1 K191 ["Actions"]
      346 SETTABLEKS                       R1 R0 K204 ["IntegrationItem"]
      348 DUPTABLE                         R1 K209 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      349 LOADK                            R2 K210 ["Assistant-McpSetup-Toggle"]
      350 SETTABLEKS                       R2 R1 K197 ["Toggle"]
      352 LOADK                            R2 K211 ["Assistant-McpSetup-StartupCommandLabel"]
      353 SETTABLEKS                       R2 R1 K205 ["StartupCommandLabel"]
      355 LOADK                            R2 K212 ["Assistant-McpSetup-JsonConfigLabel"]
      356 SETTABLEKS                       R2 R1 K206 ["JsonConfigLabel"]
      358 LOADK                            R2 K213 ["Assistant-McpSetup-StartupCommandCopy"]
      359 SETTABLEKS                       R2 R1 K207 ["StartupCommandCopy"]
      361 LOADK                            R2 K214 ["Assistant-McpSetup-JsonConfigCopy"]
      362 SETTABLEKS                       R2 R1 K208 ["JsonConfigCopy"]
      364 SETTABLEKS                       R1 R0 K215 ["McpSetup"]
      366 DUPCLOSURE                       R1 K216 [PROTO_1]
      367 SETTABLEKS                       R1 R0 K217 ["ProviderCheckbox"]
      369 DUPTABLE                         R1 K222 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      370 DUPCLOSURE                       R2 K223 [PROTO_2]
      371 SETTABLEKS                       R2 R1 K218 ["Display"]
      373 DUPCLOSURE                       R2 K224 [PROTO_3]
      374 SETTABLEKS                       R2 R1 K219 ["EditButton"]
      376 DUPCLOSURE                       R2 K225 [PROTO_4]
      377 SETTABLEKS                       R2 R1 K23 ["Input"]
      379 DUPCLOSURE                       R2 K226 [PROTO_5]
      380 SETTABLEKS                       R2 R1 K220 ["SaveButton"]
      382 DUPCLOSURE                       R2 K227 [PROTO_6]
      383 SETTABLEKS                       R2 R1 K221 ["CancelButton"]
      385 SETTABLEKS                       R1 R0 K228 ["APIKey"]
      387 DUPTABLE                         R1 K230 [{"Remove"}]
      388 LOADK                            R2 K231 ["Assistant-AttachedImagePreview-Remove"]
      389 SETTABLEKS                       R2 R1 K229 ["Remove"]
      391 SETTABLEKS                       R1 R0 K232 ["AttachedImagePreview"]
      393 GETIMPORT                        R1 K234 [pcall]
      395 DUPCLOSURE                       R2 K235 [PROTO_7]
      396 CALL                             R1 1 2
      397 JUMPIFNOT                        R1 ; [+8]
      398 NEWTABLE                         R3 0 0
      400 DUPCLOSURE                       R4 K236 [PROTO_8]
      401 CAPTURE                          VAL R4
      402 CAPTURE                          VAL R3
      403 MOVE                             R5 R4
      404 MOVE                             R6 R0
      405 CALL                             R5 1 0
      406 RETURN                           R0 1
