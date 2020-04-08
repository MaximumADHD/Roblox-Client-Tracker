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
    vec4 Exposure_DoFDistance;
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

struct MaterialParams
{
    float textureTiling;
    float plasticRoughness;
    float normalShadowScale;
    float normalDetailTiling;
    float normalDetailScale;
    float farTilingDiffuse;
    float farTilingNormal;
    float farTilingSpecular;
    float farDiffuseCutoff;
    float farNormalCutoff;
    float farSpecularCutoff;
    float optBlendColorK;
    float farDiffuseCutoffScale;
    float farNormalCutoffScale;
    float farSpecularCutoffScale;
    float isNonSmoothPlastic;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec4 f4 = texture(DiffuseMapTexture, f3);
    vec2 f5 = texture(NormalMapTexture, f3).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = texture(SpecularMapTexture, f3);
    vec3 f11 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f12 = -CB0[11].xyz;
    float f13 = dot(f11, f12);
    vec3 f14 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[2].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec3 f20 = (f18.xyz * (f18.w * 120.0)).xyz;
    float f21 = f19.x;
    float f22 = f19.y;
    vec3 f23 = VARYING7.xyz - CB0[41].xyz;
    vec3 f24 = VARYING7.xyz - CB0[42].xyz;
    vec3 f25 = VARYING7.xyz - CB0[43].xyz;
    vec4 f26 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[45].z;
    vec2 f29 = f28;
    f29.y = CB0[45].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[45].z * f30);
    float f32 = -exp((-CB0[45].w) * f30);
    vec2 f33 = (f29 * CB0[46].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    float f41 = (f13 > 0.0) ? mix(f22, mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f42 = normalize(VARYING4.xyz);
    vec3 f43 = (f14 * f14).xyz;
    float f44 = CB0[26].w * f2;
    float f45 = max(f10.y, 0.04500000178813934326171875);
    vec3 f46 = reflect(-f42, f11);
    float f47 = f45 * 5.0;
    vec3 f48 = vec4(f46, f47).xyz;
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f11, f42))));
    float f50 = f10.x * f44;
    vec3 f51 = mix(vec3(0.039999999105930328369140625), f43, vec3(f50));
    vec3 f52 = normalize(f12 + f42);
    float f53 = clamp(f13, 0.0, 1.0);
    float f54 = f45 * f45;
    float f55 = max(0.001000000047497451305389404296875, dot(f11, f52));
    float f56 = dot(f12, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f51 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - f50;
    float f64 = f44 * f63;
    vec3 f65 = vec3(f63);
    float f66 = f49.x;
    float f67 = f49.y;
    vec3 f68 = ((f51 * f66) + vec3(f67)) / vec3(f66 + f67);
    vec3 f69 = f65 - (f68 * f64);
    vec3 f70 = f11 * f11;
    bvec3 f71 = lessThan(f11, vec3(0.0));
    vec3 f72 = vec3(f71.x ? f70.x : vec3(0.0).x, f71.y ? f70.y : vec3(0.0).y, f71.z ? f70.z : vec3(0.0).z);
    vec3 f73 = f70 - f72;
    float f74 = f73.x;
    float f75 = f73.y;
    float f76 = f73.z;
    float f77 = f72.x;
    float f78 = f72.y;
    float f79 = f72.z;
    vec3 f80 = (mix(textureLod(PrefilteredEnvIndoorTexture, f48, f47).xyz * f20, textureLod(PrefilteredEnvTexture, f48, f47).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f46.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f68) * f44;
    vec3 f81 = ((((((((f65 - (f60 * f64)) * CB0[10].xyz) * f53) * f41) + (f69 * (((((((CB0[35].xyz * f74) + (CB0[37].xyz * f75)) + (CB0[39].xyz * f76)) + (CB0[36].xyz * f77)) + (CB0[38].xyz * f78)) + (CB0[40].xyz * f79)) + (((((((CB0[29].xyz * f74) + (CB0[31].xyz * f75)) + (CB0[33].xyz * f76)) + (CB0[30].xyz * f77)) + (CB0[32].xyz * f78)) + (CB0[34].xyz * f79)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) * f43) + ((((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) * f41) + f80)) + (f20 * mix(f43, f80 * (1.0 / (max(max(f80.x, f80.y), f80.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f69) * (f44 * (1.0 - f21))));
    vec4 f82 = vec4(f81.x, f81.y, f81.z, vec4(0.0).w);
    f82.w = VARYING2.w;
    vec2 f83 = min(VARYING0.wz, VARYING1.wz);
    float f84 = min(f83.x, f83.y) / f1;
    vec3 f85 = mix(CB0[14].xyz, (sqrt(clamp((f82.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f84)) + f84, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    vec4 f86 = vec4(f85.x, f85.y, f85.z, f82.w);
    f86.w = VARYING2.w;
    _entryPointOutput = f86;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
