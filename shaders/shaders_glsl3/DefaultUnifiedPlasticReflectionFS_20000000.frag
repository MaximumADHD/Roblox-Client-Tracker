#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

in vec2 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = texture(NormalMapTexture, f0);
    vec2 f2 = f1.wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec3 f5 = vec3(f3, f4);
    vec2 f6 = f5.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f7 = f5;
    f7.x = f6.x;
    vec3 f8 = f7;
    f8.y = f6.y;
    vec2 f9 = f8.xy * (clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y * CB2[3].w);
    vec4 f10 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w);
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f9.x) + (cross(f13, f12) * f9.y)) + (f13 * f4));
    vec3 f15 = f10.xyz;
    vec3 f16 = f15 * f15;
    vec4 f17 = f10;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    float f20 = length(VARYING4.xyz);
    vec3 f21 = VARYING4.xyz / vec3(f20);
    float f22 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f23 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f24 = -f21;
    vec3 f25 = reflect(f24, f14);
    float f26 = (!(VARYING7.w == 0.0)) ? 0.0 : (f23 * 5.0);
    vec3 f27 = vec4(f25, f26).xyz;
    vec3 f28 = textureLod(PrefilteredEnvTexture, f27, f26).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f25.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f29 = textureLod(PrefilteredEnvIndoorTexture, f27, f26).xyz;
    vec3 f30;
    if (CB0[32].w == 0.0)
    {
        f30 = f29;
    }
    else
    {
        f30 = mix(f29, textureLod(PrefilteredEnvBlendTargetTexture, f27, f26).xyz, vec3(CB0[32].w));
    }
    vec4 f31 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f14, f21))));
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f36 = mix(texture(LightMapTexture, f34), vec4(0.0), f35);
    vec4 f37 = mix(texture(LightGridSkylightTexture, f34), vec4(1.0), f35);
    float f38 = f37.x;
    vec4 f39 = texture(ShadowMapTexture, f32.xy);
    float f40 = f32.z;
    float f41 = f31.x;
    float f42 = f31.y;
    vec3 f43 = ((vec3(0.039999999105930328369140625) * f41) + vec3(f42)) / vec3(f41 + f42);
    vec3 f44 = f14 * f14;
    bvec3 f45 = lessThan(f14, vec3(0.0));
    vec3 f46 = vec3(f45.x ? f44.x : vec3(0.0).x, f45.y ? f44.y : vec3(0.0).y, f45.z ? f44.z : vec3(0.0).z);
    vec3 f47 = f44 - f46;
    float f48 = f47.x;
    float f49 = f47.y;
    float f50 = f47.z;
    float f51 = f46.x;
    float f52 = f46.y;
    float f53 = f46.z;
    vec3 f54 = -CB0[16].xyz;
    float f55 = dot(f14, f54) * ((1.0 - ((step(f39.x, f40) * clamp(CB0[29].z + (CB0[29].w * abs(f40 - 0.5)), 0.0, 1.0)) * f39.y)) * f37.y);
    vec3 f56 = normalize(f21 + f54);
    float f57 = clamp(f55, 0.0, 1.0);
    float f58 = f23 * f23;
    float f59 = max(0.001000000047497451305389404296875, dot(f14, f56));
    float f60 = dot(f54, f56);
    float f61 = 1.0 - f60;
    float f62 = f61 * f61;
    float f63 = (f62 * f62) * f61;
    vec3 f64 = vec3(f63) + (vec3(0.039999999105930328369140625) * (1.0 - f63));
    float f65 = f58 * f58;
    float f66 = (((f59 * f65) - f59) * f59) + 1.0;
    vec3 f67 = (((((((vec3(1.0) - (f43 * f22)) * (((((((CB0[40].xyz * f48) + (CB0[42].xyz * f49)) + (CB0[44].xyz * f50)) + (CB0[41].xyz * f51)) + (CB0[43].xyz * f52)) + (CB0[45].xyz * f53)) + (((((((CB0[34].xyz * f48) + (CB0[36].xyz * f49)) + (CB0[38].xyz * f50)) + (CB0[35].xyz * f51)) + (CB0[37].xyz * f52)) + (CB0[39].xyz * f53)) * f38))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f38)) * 1.0)) + ((((vec3(1.0) - (f64 * f22)) * CB0[15].xyz) * f57) + (CB0[17].xyz * clamp(-f55, 0.0, 1.0)))) + (f36.xyz * (f36.w * 120.0))) * mix(f19.xyz, f28, vec3(VARYING7.w))) + (((mix(f30, f28, vec3(f38)) * f43) * f22) + (((f64 * (((f65 + (f65 * f65)) / (((f66 * f66) * ((f60 * 3.0) + 0.5)) * ((f59 * 0.75) + 0.25))) * f57)) * CB0[15].xyz) * 1.0));
    vec4 f68 = vec4(0.0);
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec4 f71 = f70;
    f71.w = VARYING2.w;
    float f72 = clamp(exp2((CB0[18].z * f20) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f73 = textureLod(PrefilteredEnvTexture, vec4(f24, 0.0).xyz, max(CB0[18].y, f72) * 5.0).xyz;
    bvec3 f74 = bvec3(!(CB0[18].w == 0.0));
    vec3 f75 = mix(vec3(f74.x ? CB0[19].xyz.x : f73.x, f74.y ? CB0[19].xyz.y : f73.y, f74.z ? CB0[19].xyz.z : f73.z), f71.xyz, vec3(f72));
    vec4 f76 = f71;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec3 f79 = sqrt(clamp(f78.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f80 = f78;
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec4 f83 = f82;
    f83.w = VARYING2.w;
    _entryPointOutput = f83;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
