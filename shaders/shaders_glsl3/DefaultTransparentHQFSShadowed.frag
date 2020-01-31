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
    float debugFlags;
};

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 f1 = normalize(VARYING5.xyz);
    vec3 f2 = -CB0[11].xyz;
    float f3 = dot(f1, f2);
    vec3 f4 = f0.xyz;
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.y;
    vec3 f11 = VARYING6.xyz - CB0[41].xyz;
    vec3 f12 = VARYING6.xyz - CB0[42].xyz;
    vec3 f13 = VARYING6.xyz - CB0[43].xyz;
    vec4 f14 = vec4(VARYING6.xyz, 1.0) * mat4(CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f15 = textureLod(ShadowAtlasTexture, f14.xy, 0.0);
    vec2 f16 = vec2(0.0);
    f16.x = CB0[45].z;
    vec2 f17 = f16;
    f17.y = CB0[45].w;
    float f18 = (2.0 * f14.z) - 1.0;
    float f19 = exp(CB0[45].z * f18);
    float f20 = -exp((-CB0[45].w) * f18);
    vec2 f21 = (f17 * CB0[46].y) * vec2(f19, f20);
    vec2 f22 = f21 * f21;
    float f23 = f15.x;
    float f24 = max(f15.y - (f23 * f23), f22.x);
    float f25 = f19 - f23;
    float f26 = f15.z;
    float f27 = max(f15.w - (f26 * f26), f22.y);
    float f28 = f20 - f26;
    float f29 = (f3 > 0.0) ? mix(f10, mix(min((f19 <= f23) ? 1.0 : clamp(((f24 / (f24 + (f25 * f25))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f20 <= f26) ? 1.0 : clamp(((f27 / (f27 + (f28 * f28))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f10, clamp((length(VARYING6.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f30 = (f4 * f4).xyz;
    float f31 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f32 = max(VARYING5.w, 0.04500000178813934326171875);
    float f33 = VARYING6.w * f31;
    vec3 f34 = normalize(f2 + normalize(VARYING4.xyz));
    float f35 = clamp(f3, 0.0, 1.0);
    float f36 = f32 * f32;
    float f37 = max(0.001000000047497451305389404296875, dot(f1, f34));
    float f38 = dot(f2, f34);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (mix(vec3(0.039999999105930328369140625), f30, vec3(f33)) * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    vec3 f45 = (((((((vec3(1.0) - (f42 * f31)) * (1.0 - f33)) * CB0[10].xyz) * f35) * f29) + min((f8.xyz * (f8.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f9.x)), vec3(CB0[16].w))) * f30) + ((((f42 * ((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25)))) * CB0[10].xyz) * f35) * f29);
    vec4 f46 = vec4(f45.x, f45.y, f45.z, vec4(0.0).w);
    f46.w = f0.w;
    vec3 f47 = mix(CB0[14].xyz, (sqrt(clamp(f46.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f47.x, f47.y, f47.z, f46.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
