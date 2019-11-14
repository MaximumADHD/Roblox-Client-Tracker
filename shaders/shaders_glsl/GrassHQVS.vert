#version 110

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
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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

struct GrassParams
{
    vec4 Offset;
    vec4 Dist_HeightFade;
};

struct GrassPerFrameParams
{
    vec4 grassColor0;
    vec4 grassColor1;
    vec4 data;
};

uniform vec4 CB0[47];
uniform vec4 CB1[2];
uniform vec4 CB2[3];
attribute vec4 POSITION;
attribute vec4 NORMAL;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec3 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;

void main()
{
    bool v0 = NORMAL.w >= 0.5;
    float v1 = (v0 ? (NORMAL.w - 0.5) : NORMAL.w) * 2.0;
    vec4 v2 = POSITION * vec4(0.00390625);
    vec3 v3 = NORMAL.xyz * 2.0;
    vec2 v4 = v2.xz + (vec2(0.5) * (2.0 * CB2[2].z));
    vec2 v5 = floor(v4);
    vec2 v6 = fract(v4);
    vec2 v7 = (v6 * v6) * (vec2(3.0) - (v6 * 2.0));
    vec2 v8 = fract((v5 * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v9 = v8.x;
    float v10 = v8.y;
    vec2 v11 = fract(((v5 + vec2(1.0, 0.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v12 = v11.x;
    float v13 = v11.y;
    float v14 = v7.x;
    vec2 v15 = fract(((v5 + vec2(0.0, 1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v16 = v15.x;
    float v17 = v15.y;
    vec2 v18 = fract(((v5 + vec2(1.0)) * 0.31830990314483642578125) + vec2(0.709999978542327880859375, 0.112999998033046722412109375)) * 50.0;
    float v19 = v18.x;
    float v20 = v18.y;
    vec3 v21 = (v2.xyz + CB1[0].xyz) + ((vec3(0.5, 0.0, 0.5) * mix(mix((-1.0) + (2.0 * fract((v9 * v10) * (v9 + v10))), (-1.0) + (2.0 * fract((v12 * v13) * (v12 + v13))), v14), mix((-1.0) + (2.0 * fract((v16 * v17) * (v16 + v17))), (-1.0) + (2.0 * fract((v19 * v20) * (v19 + v20))), v14), v7.y)) * ((v1 > 0.100000001490116119384765625) ? 0.0 : 0.4000000059604644775390625));
    float v22 = v21.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[7].xyz - v21)) * CB1[1].y)) * v2.w);
    vec3 v23 = v21;
    v23.y = v22;
    vec4 v24 = vec4(v21.x, v22, v21.z, 1.0);
    vec3 v25 = CB0[7].xyz - v23;
    float v26 = length(v25);
    vec3 v27 = (v3 - vec3(1.0)) * sign(dot(CB0[11].xyz, vec3(1.0) - v3));
    vec3 v28 = -CB0[11].xyz;
    float v29 = dot(v27, v28);
    float v30 = exp2((-clamp(v1, 0.0, 1.0)) * CB2[2].x);
    bvec3 v31 = bvec3(v0);
    vec3 v32 = normalize(v25);
    vec3 v33 = normalize(v28 + v32);
    float v34 = 1.0 - clamp(((v26 - CB2[2].y) + 40.0) * 0.02500000037252902984619140625, 0.0, 1.0);
    vec4 v35 = vec4(0.0);
    v35.x = (v29 * 0.5) + 0.5;
    vec4 v36 = v35;
    v36.y = dot(v33, v27);
    vec4 v37 = v36;
    v37.z = (dot(v32, CB0[11].xyz) * v34) * v30;
    vec4 v38 = v37;
    v38.w = (pow(clamp(v33.y, 0.0, 1.0), 8.0) * v34) * v30;
    gl_Position = v24 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(((v23 + vec3(0.0, 6.0, 0.0)).yxz * CB0[16].xyz) + CB0[17].xyz, (CB0[13].x * v26) + CB0[13].y);
    VARYING1 = vec3(dot(CB0[20], v24), dot(CB0[21], v24), dot(CB0[22], v24));
    VARYING2 = (CB0[10].xyz * clamp((v29 + 0.89999997615814208984375) * 0.52631580829620361328125, 0.0, 1.0)) * v30;
    VARYING3 = v38;
    VARYING4 = vec3(v31.x ? CB2[1].xyz.x : CB2[0].xyz.x, v31.y ? CB2[1].xyz.y : CB2[0].xyz.y, v31.z ? CB2[1].xyz.z : CB2[0].xyz.z);
}

