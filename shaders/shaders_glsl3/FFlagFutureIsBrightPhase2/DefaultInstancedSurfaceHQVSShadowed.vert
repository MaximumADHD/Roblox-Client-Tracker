#version 150

const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

struct Instance
{
    vec4 row0;
    vec4 row1;
    vec4 row2;
    vec4 scale;
    vec4 color;
    vec4 uvScale;
    vec4 uvOffset;
};

uniform vec4 CB0[32];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 v2 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v3 = int(NORMAL.w);
    vec3 v4 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v5 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v6 = vec4(v5.x, v5.y, v5.z, POSITION.w);
    float v7 = dot(CB1[gl_InstanceID * 7 + 0], v6);
    float v8 = dot(CB1[gl_InstanceID * 7 + 1], v6);
    float v9 = dot(CB1[gl_InstanceID * 7 + 2], v6);
    vec3 v10 = vec3(v7, v8, v9);
    float v11 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v4);
    float v12 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v4);
    float v13 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v4);
    vec3 v14 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v2), dot(CB1[gl_InstanceID * 7 + 1].xyz, v2), dot(CB1[gl_InstanceID * 7 + 2].xyz, v2));
    vec2 v15 = vec2(0.0);
    v15.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v3]);
    vec2 v16 = v15;
    v16.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v3]);
    vec2 v17 = vec2(0.0);
    v17.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v3]);
    vec2 v18 = v17;
    v18.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v3]);
    vec4 v19 = vec4(0.0);
    v19.w = sign(TEXCOORD2.w - 0.5);
    vec4 v20 = vec4(v7, v8, v9, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v21 = vec4((TEXCOORD0.xy * v16) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 v22 = vec4(TEXCOORD0.zw * v18, 0.0, 0.0);
    float v23 = v20.w;
    vec4 v24 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * v23) * CB0[24].y);
    vec4 v25 = vec4(v10 - (CB0[11].xyz * abs(CB1[gl_InstanceID * 7 + 3].w)), 0.0);
    v25.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = v20;
    VARYING0 = vec4(v21.x, v21.y, v24.x, v24.y);
    VARYING1 = vec4(v22.x, v22.y, v24.z, v24.w);
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    VARYING3 = vec4(((v10 + (vec3(v11, v12, v13) * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - v10, v23);
    VARYING5 = vec4(v11, v12, v13, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4(v14.x, v14.y, v14.z, v19.w);
    VARYING7 = v25;
    VARYING8 = TEXCOORD2.w - 1.0;
}

