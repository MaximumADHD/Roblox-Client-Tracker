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
       93 DUPTABLE                         R1 K59 [{"Container", "Dropdown", "TextArea", "Close", "Submit"}]
       94 LOADK                            R2 K60 ["Assistant-FeedbackView-Container"]
       95 SETTABLEKS                       R2 R1 K8 ["Container"]
       97 LOADK                            R2 K61 ["Assistant-FeedbackView-Dropdown"]
       98 SETTABLEKS                       R2 R1 K55 ["Dropdown"]
      100 LOADK                            R2 K62 ["Assistant-FeedbackView-TextArea"]
      101 SETTABLEKS                       R2 R1 K56 ["TextArea"]
      103 LOADK                            R2 K63 ["Assistant-FeedbackView-Close"]
      104 SETTABLEKS                       R2 R1 K57 ["Close"]
      106 LOADK                            R2 K64 ["Assistant-FeedbackView-Submit"]
      107 SETTABLEKS                       R2 R1 K58 ["Submit"]
      109 SETTABLEKS                       R1 R0 K65 ["FeedbackView"]
      111 LOADK                            R1 K66 ["Assistant-GenerationIndicator"]
      112 SETTABLEKS                       R1 R0 K67 ["GenerationIndicator"]
      114 LOADK                            R1 K68 ["Assistant-ModelQualityWarning"]
      115 SETTABLEKS                       R1 R0 K69 ["ModelQualityWarning"]
      117 DUPTABLE                         R1 K71 [{"Button"}]
      118 LOADK                            R2 K72 ["Assistant-ServerManagement-Button"]
      119 SETTABLEKS                       R2 R1 K70 ["Button"]
      121 SETTABLEKS                       R1 R0 K73 ["ServerManagement"]
      123 DUPTABLE                         R1 K76 [{"Checkbox", "CheckboxInput"}]
      124 LOADK                            R2 K77 ["Assistant-McpServer-Checkbox"]
      125 SETTABLEKS                       R2 R1 K74 ["Checkbox"]
      127 LOADK                            R2 K78 ["Assistant-McpServer-Checkbox--container"]
      128 SETTABLEKS                       R2 R1 K75 ["CheckboxInput"]
      130 SETTABLEKS                       R1 R0 K79 ["McpServer"]
      132 DUPTABLE                         R1 K81 [{"Container", "Item"}]
      133 LOADK                            R2 K82 ["Assistant-SlashCommandMenu-Container"]
      134 SETTABLEKS                       R2 R1 K8 ["Container"]
      136 DUPTABLE                         R2 K84 [{"Container", "Command"}]
      137 LOADK                            R3 K85 ["Assistant-SlashCommandMenu-Item-Container"]
      138 SETTABLEKS                       R3 R2 K8 ["Container"]
      140 LOADK                            R3 K86 ["Assistant-SlashCommandMenu-Item-Command"]
      141 SETTABLEKS                       R3 R2 K83 ["Command"]
      143 SETTABLEKS                       R2 R1 K80 ["Item"]
      145 SETTABLEKS                       R1 R0 K87 ["SlashCommandMenu"]
      147 DUPTABLE                         R1 K89 [{"Container", "Option"}]
      148 LOADK                            R2 K90 ["Assistant-ToolMenuView-Container"]
      149 SETTABLEKS                       R2 R1 K8 ["Container"]
      151 DUPTABLE                         R2 K91 [{"Container", "Checkbox"}]
      152 LOADK                            R3 K92 ["Assistant-ToolMenuView-Option-Container"]
      153 SETTABLEKS                       R3 R2 K8 ["Container"]
      155 LOADK                            R3 K93 ["Assistant-ToolMenuView-Option-Checkbox"]
      156 SETTABLEKS                       R3 R2 K74 ["Checkbox"]
      158 SETTABLEKS                       R2 R1 K88 ["Option"]
      160 SETTABLEKS                       R1 R0 K94 ["ToolMenuView"]
      162 DUPTABLE                         R1 K95 [{"Container", "Dropdown"}]
      163 LOADK                            R2 K96 ["Assistant-ModelPicker-Container"]
      164 SETTABLEKS                       R2 R1 K8 ["Container"]
      166 LOADK                            R2 K97 ["Assistant-ModelPicker-Dropdown"]
      167 SETTABLEKS                       R2 R1 K55 ["Dropdown"]
      169 SETTABLEKS                       R1 R0 K98 ["ModelPicker"]
      171 DUPTABLE                         R1 K20 [{"Container"}]
      172 LOADK                            R2 K99 ["Assistant-Carousel-Container"]
      173 SETTABLEKS                       R2 R1 K8 ["Container"]
      175 SETTABLEKS                       R1 R0 K100 ["Carousel"]
      177 DUPTABLE                         R1 K102 [{"Selected"}]
      178 LOADK                            R2 K103 ["Assistant-CarouselItem-Selected"]
      179 SETTABLEKS                       R2 R1 K101 ["Selected"]
      181 SETTABLEKS                       R1 R0 K104 ["CarouselItem"]
      183 DUPTABLE                         R1 K107 [{"Continue", "EditApiKeys", "Close"}]
      184 LOADK                            R2 K108 ["Assistant-Alert-Continue"]
      185 SETTABLEKS                       R2 R1 K105 ["Continue"]
      187 LOADK                            R2 K109 ["Assistant-Alert-EditApiKeys"]
      188 SETTABLEKS                       R2 R1 K106 ["EditApiKeys"]
      190 LOADK                            R2 K110 ["Assistant-Alert-Close"]
      191 SETTABLEKS                       R2 R1 K57 ["Close"]
      193 SETTABLEKS                       R1 R0 K111 ["Alert"]
      195 DUPTABLE                         R1 K114 [{"Image", "Expand"}]
      196 LOADK                            R2 K115 ["Assistant-ImageContent-Image"]
      197 SETTABLEKS                       R2 R1 K112 ["Image"]
      199 LOADK                            R2 K116 ["Assistant-ImageContent-Expand"]
      200 SETTABLEKS                       R2 R1 K113 ["Expand"]
      202 SETTABLEKS                       R1 R0 K117 ["ImageContent"]
      204 DUPTABLE                         R1 K118 [{"Expand"}]
      205 LOADK                            R2 K119 ["Assistant-AssetVariation-Expand"]
      206 SETTABLEKS                       R2 R1 K113 ["Expand"]
      208 SETTABLEKS                       R1 R0 K120 ["AssetVariation"]
      210 DUPTABLE                         R1 K123 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      211 LOADK                            R2 K124 ["Assistant-MaterialGen-Expand"]
      212 SETTABLEKS                       R2 R1 K113 ["Expand"]
      214 LOADK                            R2 K125 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      215 SETTABLEKS                       R2 R1 K121 ["StudsPerTileValueBar"]
      217 LOADK                            R2 K126 ["Assistant-MaterialGen-OrganicPatternToggle"]
      218 SETTABLEKS                       R2 R1 K122 ["OrganicPatternToggle"]
      220 SETTABLEKS                       R1 R0 K127 ["MaterialGen"]
      222 DUPTABLE                         R1 K137 [{"Expand", "PreviewImage", "UseSelection", "MaxTriangles", "LastPreview", "NextPreview", "Cancel", "Regenerate", "Publish", "Insert"}]
      223 LOADK                            R2 K138 ["Assistant-MeshGen-Expand"]
      224 SETTABLEKS                       R2 R1 K113 ["Expand"]
      226 LOADK                            R2 K139 ["Assistant-MeshGen-PreviewImage"]
      227 SETTABLEKS                       R2 R1 K128 ["PreviewImage"]
      229 LOADK                            R2 K140 ["Assistant-MeshGen-UseSelection"]
      230 SETTABLEKS                       R2 R1 K129 ["UseSelection"]
      232 LOADK                            R2 K141 ["Assistant-MeshGen-MaxTriangles"]
      233 SETTABLEKS                       R2 R1 K130 ["MaxTriangles"]
      235 LOADK                            R2 K142 ["Assistant-MeshGen-LastPreview"]
      236 SETTABLEKS                       R2 R1 K131 ["LastPreview"]
      238 LOADK                            R2 K143 ["Assistant-MeshGen-NextPreview"]
      239 SETTABLEKS                       R2 R1 K132 ["NextPreview"]
      241 LOADK                            R2 K144 ["Assistant-MeshGen-Cancel"]
      242 SETTABLEKS                       R2 R1 K133 ["Cancel"]
      244 LOADK                            R2 K145 ["Assistant-MeshGen-Regenerate"]
      245 SETTABLEKS                       R2 R1 K134 ["Regenerate"]
      247 LOADK                            R2 K146 ["Assistant-MeshGen-Publish"]
      248 SETTABLEKS                       R2 R1 K135 ["Publish"]
      250 LOADK                            R2 K147 ["Assistant-MeshGen-Insert"]
      251 SETTABLEKS                       R2 R1 K136 ["Insert"]
      253 SETTABLEKS                       R1 R0 K148 ["MeshGen"]
      255 DUPTABLE                         R1 K152 [{"Expand", "Copy", "Run", "Stop"}]
      256 LOADK                            R2 K153 ["Assistant-RunCode-Expand"]
      257 SETTABLEKS                       R2 R1 K113 ["Expand"]
      259 LOADK                            R2 K154 ["Assistant-RunCode-Copy"]
      260 SETTABLEKS                       R2 R1 K149 ["Copy"]
      262 LOADK                            R2 K155 ["Assistant-RunCode-Run"]
      263 SETTABLEKS                       R2 R1 K150 ["Run"]
      265 LOADK                            R2 K156 ["Assistant-RunCode-Stop"]
      266 SETTABLEKS                       R2 R1 K151 ["Stop"]
      268 SETTABLEKS                       R1 R0 K157 ["RunCode"]
      270 DUPTABLE                         R1 K118 [{"Expand"}]
      271 LOADK                            R2 K158 ["Assistant-Thinking-Expand"]
      272 SETTABLEKS                       R2 R1 K113 ["Expand"]
      274 SETTABLEKS                       R1 R0 K159 ["Thinking"]
      276 DUPTABLE                         R1 K164 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      277 LOADK                            R2 K165 ["Assistant-ToolConfirmation-Warning"]
      278 SETTABLEKS                       R2 R1 K160 ["Warning"]
      280 LOADK                            R2 K166 ["Assistant-ToolConfirmation-Accept"]
      281 SETTABLEKS                       R2 R1 K161 ["Accept"]
      283 LOADK                            R2 K167 ["Assistant-ToolConfirmation-Reject"]
      284 SETTABLEKS                       R2 R1 K162 ["Reject"]
      286 LOADK                            R2 K168 ["Assistant-ToolConfirmation-AlwaysAccept"]
      287 SETTABLEKS                       R2 R1 K163 ["AlwaysAccept"]
      289 SETTABLEKS                       R1 R0 K169 ["ToolConfirmation"]
      291 DUPTABLE                         R1 K173 [{"Warning", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
      292 LOADK                            R2 K174 ["Assistant-ScriptChangeConfirmation-Warning"]
      293 SETTABLEKS                       R2 R1 K160 ["Warning"]
      295 LOADK                            R2 K175 ["Assistant-ScriptChangeConfirmation-ReviewEach"]
      296 SETTABLEKS                       R2 R1 K170 ["ReviewEach"]
      298 LOADK                            R2 K176 ["Assistant-ScriptChangeConfirmation-AcceptAllPrompt"]
      299 SETTABLEKS                       R2 R1 K171 ["AcceptAllPrompt"]
      301 LOADK                            R2 K177 ["Assistant-ScriptChangeConfirmation-AcceptAllSession"]
      302 SETTABLEKS                       R2 R1 K172 ["AcceptAllSession"]
      304 SETTABLEKS                       R1 R0 K178 ["ScriptChangeConfirmation"]
      306 DUPTABLE                         R1 K179 [{"Icon", "Expand"}]
      307 LOADK                            R2 K180 ["Assistant-Summarized-Icon"]
      308 SETTABLEKS                       R2 R1 K41 ["Icon"]
      310 LOADK                            R2 K181 ["Assistant-Summarized-Expand"]
      311 SETTABLEKS                       R2 R1 K113 ["Expand"]
      313 SETTABLEKS                       R1 R0 K182 ["Summarized"]
      315 DUPTABLE                         R1 K184 [{"Title"}]
      316 LOADK                            R2 K185 ["Assistant-ReadFile-Title"]
      317 SETTABLEKS                       R2 R1 K183 ["Title"]
      319 SETTABLEKS                       R1 R0 K186 ["ReadFile"]
      321 DUPTABLE                         R1 K118 [{"Expand"}]
      322 LOADK                            R2 K187 ["Assistant-InputRequested-Expand"]
      323 SETTABLEKS                       R2 R1 K113 ["Expand"]
      325 SETTABLEKS                       R1 R0 K188 ["InputRequested"]
      327 DUPTABLE                         R1 K193 [{"StepperPrev", "StepperNext", "ConfirmCheckbox", "Dismiss"}]
      328 LOADK                            R2 K194 ["Assistant-QuestionAnswer-StepperPrev"]
      329 SETTABLEKS                       R2 R1 K189 ["StepperPrev"]
      331 LOADK                            R2 K195 ["Assistant-QuestionAnswer-StepperNext"]
      332 SETTABLEKS                       R2 R1 K190 ["StepperNext"]
      334 LOADK                            R2 K196 ["Assistant-QuestionAnswer-ConfirmCheckbox"]
      335 SETTABLEKS                       R2 R1 K191 ["ConfirmCheckbox"]
      337 LOADK                            R2 K197 ["Assistant-QuestionAnswer-Dismiss"]
      338 SETTABLEKS                       R2 R1 K192 ["Dismiss"]
      340 SETTABLEKS                       R1 R0 K198 ["QuestionAnswer"]
      342 DUPTABLE                         R1 K202 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      343 LOADK                            R2 K203 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      344 SETTABLEKS                       R2 R1 K199 ["AddIntegrationDialog"]
      346 LOADK                            R2 K204 ["Assistant-IntegrationMenu-TabContent"]
      347 SETTABLEKS                       R2 R1 K200 ["TabContent"]
      349 LOADK                            R2 K205 ["Assistant-IntegrationMenu-EmptyState"]
      350 SETTABLEKS                       R2 R1 K201 ["EmptyState"]
      352 SETTABLEKS                       R1 R0 K206 ["IntegrationMenu"]
      354 DUPTABLE                         R1 K211 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      355 LOADK                            R2 K212 ["Assistant-IntegrationItem-Dialog"]
      356 SETTABLEKS                       R2 R1 K207 ["Dialog"]
      358 LOADK                            R2 K213 ["Assistant-IntegrationItem-Header"]
      359 SETTABLEKS                       R2 R1 K7 ["Header"]
      361 LOADK                            R2 K214 ["Assistant-IntegrationItem-ToolsContainer"]
      362 SETTABLEKS                       R2 R1 K208 ["ToolsContainer"]
      364 DUPCLOSURE                       R2 K215 [PROTO_0]
      365 SETTABLEKS                       R2 R1 K209 ["ToolPill"]
      367 DUPTABLE                         R2 K219 [{"Toggle", "OverflowButton", "OverflowContent"}]
      368 LOADK                            R3 K220 ["Assistant-IntegrationItem-Actions-Toggle"]
      369 SETTABLEKS                       R3 R2 K216 ["Toggle"]
      371 LOADK                            R3 K221 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      372 SETTABLEKS                       R3 R2 K217 ["OverflowButton"]
      374 LOADK                            R3 K222 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      375 SETTABLEKS                       R3 R2 K218 ["OverflowContent"]
      377 SETTABLEKS                       R2 R1 K210 ["Actions"]
      379 SETTABLEKS                       R1 R0 K223 ["IntegrationItem"]
      381 DUPTABLE                         R1 K228 [{"Toggle", "StartupCommandLabel", "JsonConfigLabel", "StartupCommandCopy", "JsonConfigCopy"}]
      382 LOADK                            R2 K229 ["Assistant-McpSetup-Toggle"]
      383 SETTABLEKS                       R2 R1 K216 ["Toggle"]
      385 LOADK                            R2 K230 ["Assistant-McpSetup-StartupCommandLabel"]
      386 SETTABLEKS                       R2 R1 K224 ["StartupCommandLabel"]
      388 LOADK                            R2 K231 ["Assistant-McpSetup-JsonConfigLabel"]
      389 SETTABLEKS                       R2 R1 K225 ["JsonConfigLabel"]
      391 LOADK                            R2 K232 ["Assistant-McpSetup-StartupCommandCopy"]
      392 SETTABLEKS                       R2 R1 K226 ["StartupCommandCopy"]
      394 LOADK                            R2 K233 ["Assistant-McpSetup-JsonConfigCopy"]
      395 SETTABLEKS                       R2 R1 K227 ["JsonConfigCopy"]
      397 SETTABLEKS                       R1 R0 K234 ["McpSetup"]
      399 DUPCLOSURE                       R1 K235 [PROTO_1]
      400 SETTABLEKS                       R1 R0 K236 ["ProviderCheckbox"]
      402 DUPTABLE                         R1 K241 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      403 DUPCLOSURE                       R2 K242 [PROTO_2]
      404 SETTABLEKS                       R2 R1 K237 ["Display"]
      406 DUPCLOSURE                       R2 K243 [PROTO_3]
      407 SETTABLEKS                       R2 R1 K238 ["EditButton"]
      409 DUPCLOSURE                       R2 K244 [PROTO_4]
      410 SETTABLEKS                       R2 R1 K23 ["Input"]
      412 DUPCLOSURE                       R2 K245 [PROTO_5]
      413 SETTABLEKS                       R2 R1 K239 ["SaveButton"]
      415 DUPCLOSURE                       R2 K246 [PROTO_6]
      416 SETTABLEKS                       R2 R1 K240 ["CancelButton"]
      418 SETTABLEKS                       R1 R0 K247 ["APIKey"]
      420 DUPTABLE                         R1 K249 [{"Remove"}]
      421 LOADK                            R2 K250 ["Assistant-AttachedImagePreview-Remove"]
      422 SETTABLEKS                       R2 R1 K248 ["Remove"]
      424 SETTABLEKS                       R1 R0 K251 ["AttachedImagePreview"]
      426 GETIMPORT                        R1 K253 [pcall]
      428 DUPCLOSURE                       R2 K254 [PROTO_7]
      429 CALL                             R1 1 2
      430 JUMPIFNOT                        R1 ; [+8]
      431 NEWTABLE                         R3 0 0
      433 DUPCLOSURE                       R4 K255 [PROTO_8]
      434 CAPTURE                          VAL R4
      435 CAPTURE                          VAL R3
      436 MOVE                             R5 R4
      437 MOVE                             R6 R0
      438 CALL                             R5 1 0
      439 RETURN                           R0 1
