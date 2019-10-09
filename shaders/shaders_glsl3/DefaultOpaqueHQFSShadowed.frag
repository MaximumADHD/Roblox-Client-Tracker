#version 150

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

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[31];
uniform vec4 CB8[24];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = normalize(VARYING5.xyz);
    vec3 f1 = -CB0[11].xyz;
    vec3 f2 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    float f3 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING3.yzx - (VARYING3.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture(LightGridSkylightTexture, f4), vec4(1.0), f5);
    float f8 = f7.y;
    vec3 f9 = VARYING7.xyz - CB0[25].xyz;
    vec3 f10 = VARYING7.xyz - CB0[26].xyz;
    vec3 f11 = VARYING7.xyz - CB0[27].xyz;
    vec4 f12 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f9, f9) < CB0[25].w) ? 0 : ((dot(f10, f10) < CB0[26].w) ? 1 : ((dot(f11, f11) < CB0[27].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f9, f9) < CB0[25].w) ? 0 : ((dot(f10, f10) < CB0[26].w) ? 1 : ((dot(f11, f11) < CB0[27].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f9, f9) < CB0[25].w) ? 0 : ((dot(f10, f10) < CB0[26].w) ? 1 : ((dot(f11, f11) < CB0[27].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f9, f9) < CB0[25].w) ? 0 : ((dot(f10, f10) < CB0[26].w) ? 1 : ((dot(f11, f11) < CB0[27].w) ? 2 : 3))) * 4 + 3]);
    vec4 f13 = textureLod(ShadowAtlasTexture, f12.xy, 0.0);
    vec2 f14 = vec2(0.0);
    f14.x = CB0[29].z;
    vec2 f15 = f14;
    f15.y = CB0[29].w;
    float f16 = (2.0 * f12.z) - 1.0;
    float f17 = exp(CB0[29].z * f16);
    float f18 = -exp((-CB0[29].w) * f16);
    vec2 f19 = (f15 * CB0[30].y) * vec2(f17, f18);
    vec2 f20 = f19 * f19;
    float f21 = f13.x;
    float f22 = max(f13.y - (f21 * f21), f20.x);
    float f23 = f17 - f21;
    float f24 = f13.z;
    float f25 = max(f13.w - (f24 * f24), f20.y);
    float f26 = f18 - f24;
    float f27 = (dot(f0, f1) > 0.0) ? mix(f8, mix(min((f17 <= f21) ? 1.0 : clamp(((f22 / (f22 + (f23 * f23))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f18 <= f24) ? 1.0 : clamp(((f25 / (f25 + (f26 * f26))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f8, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[29].y) - (CB0[29].x * CB0[29].y), 0.0, 1.0)), CB0[30].x) : 0.0;
    vec3 f28 = ((min(((f6.xyz * (f6.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f7.x), vec3(CB0[16].w)) + (VARYING6.xyz * f27)) * (f2 * f2).xyz) + (CB0[10].xyz * ((VARYING6.w * f27) * pow(clamp(dot(f0, normalize(f1 + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 f29 = vec4(f28.x, f28.y, f28.z, vec4(0.0).w);
    f29.w = 1.0;
    vec3 f30 = mix(CB0[14].xyz, (sqrt(clamp(f29.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f30.x, f30.y, f30.z, f29.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
