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

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[32];
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 f1 = normalize(VARYING5.xyz);
    vec3 f2 = -CB0[11].xyz;
    vec3 f3 = f0.xyz;
    float f4 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f5 = VARYING3.yzx - (VARYING3.yzx * f4);
    vec4 f6 = vec4(clamp(f4, 0.0, 1.0));
    vec4 f7 = mix(texture(LightMapTexture, f5), vec4(0.0), f6);
    vec4 f8 = mix(texture(LightGridSkylightTexture, f5), vec4(1.0), f6);
    float f9 = f8.y;
    vec3 f10 = VARYING7.xyz - CB0[26].xyz;
    vec3 f11 = VARYING7.xyz - CB0[27].xyz;
    vec3 f12 = VARYING7.xyz - CB0[28].xyz;
    vec4 f13 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f10, f10) < CB0[26].w) ? 0 : ((dot(f11, f11) < CB0[27].w) ? 1 : ((dot(f12, f12) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f14 = textureLod(ShadowAtlasTexture, f13.xy, 0.0);
    vec2 f15 = vec2(0.0);
    f15.x = CB0[30].z;
    vec2 f16 = f15;
    f16.y = CB0[30].w;
    float f17 = (2.0 * f13.z) - 1.0;
    float f18 = exp(CB0[30].z * f17);
    float f19 = -exp((-CB0[30].w) * f17);
    vec2 f20 = (f16 * CB0[31].y) * vec2(f18, f19);
    vec2 f21 = f20 * f20;
    float f22 = f14.x;
    float f23 = max(f14.y - (f22 * f22), f21.x);
    float f24 = f18 - f22;
    float f25 = f14.z;
    float f26 = max(f14.w - (f25 * f25), f21.y);
    float f27 = f19 - f25;
    float f28 = (dot(f1, f2) > 0.0) ? mix(f9, mix(min((f18 <= f22) ? 1.0 : clamp(((f23 / (f23 + (f24 * f24))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f19 <= f25) ? 1.0 : clamp(((f26 / (f26 + (f27 * f27))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f9, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f29 = ((min(((f7.xyz * (f7.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f8.x), vec3(CB0[17].w)) + (VARYING6.xyz * f28)) * (f3 * f3).xyz) + (CB0[10].xyz * ((VARYING6.w * f28) * pow(clamp(dot(f1, normalize(f2 + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 f30 = vec4(f29.x, f29.y, f29.z, vec4(0.0).w);
    f30.w = f0.w;
    vec3 f31 = mix(CB0[14].xyz, (sqrt(clamp(f30.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f31.x, f31.y, f31.z, f30.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
