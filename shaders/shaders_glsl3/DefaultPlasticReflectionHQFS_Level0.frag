#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
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
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * (f3 * CB2[3].w);
    vec4 f13 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + (cross(f16, f15) * f12.y)) + (f16 * f7));
    vec3 f18 = f13.xyz;
    vec3 f19 = f18 * f18;
    vec4 f20 = f13;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    float f31 = f30.x;
    vec4 f32 = texture(ShadowMapTexture, f23.xy);
    float f33 = f23.z;
    float f34 = CB0[26].w * f3;
    float f35 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f36 = reflect(-f1, f17);
    float f37 = (!(VARYING7.w == 0.0)) ? 0.0 : (f35 * 5.0);
    vec3 f38 = vec4(f36, f37).xyz;
    vec3 f39 = textureLod(PrefilteredEnvTexture, f38, f37).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f36.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f40 = textureLod(PrefilteredEnvIndoorTexture, f38, f37).xyz;
    vec3 f41;
    if (CB0[27].w == 0.0)
    {
        f41 = f40;
    }
    else
    {
        f41 = mix(f40, textureLod(PrefilteredEnvBlendTargetTexture, f38, f37).xyz, vec3(CB0[27].w));
    }
    vec4 f42 = texture(PrecomputedBRDFTexture, vec2(f35, max(9.9999997473787516355514526367188e-05, dot(f17, f1))));
    vec3 f43 = -CB0[11].xyz;
    float f44 = (dot(f17, f43) * CB0[9].w) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[24].z + (CB0[24].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f30.y);
    vec3 f45 = normalize(f1 - CB0[11].xyz);
    float f46 = clamp(f44, 0.0, 1.0);
    float f47 = f35 * f35;
    float f48 = max(0.001000000047497451305389404296875, dot(f17, f45));
    float f49 = dot(f43, f45);
    float f50 = 1.0 - f49;
    float f51 = f50 * f50;
    float f52 = (f51 * f51) * f50;
    vec3 f53 = vec3(f52) + (vec3(0.039999999105930328369140625) * (1.0 - f52));
    float f54 = f47 * f47;
    float f55 = (((f48 * f54) - f48) * f48) + 1.0;
    float f56 = f42.x;
    float f57 = f42.y;
    vec3 f58 = ((vec3(0.039999999105930328369140625) * f56) + vec3(f57)) / vec3(f56 + f57);
    vec3 f59 = f17 * f17;
    bvec3 f60 = lessThan(f17, vec3(0.0));
    vec3 f61 = vec3(f60.x ? f59.x : vec3(0.0).x, f60.y ? f59.y : vec3(0.0).y, f60.z ? f59.z : vec3(0.0).z);
    vec3 f62 = f59 - f61;
    float f63 = f62.x;
    float f64 = f62.y;
    float f65 = f62.z;
    float f66 = f61.x;
    float f67 = f61.y;
    float f68 = f61.z;
    vec3 f69 = ((((((((vec3(1.0) - (f53 * f34)) * CB0[10].xyz) * f46) + (CB0[12].xyz * clamp(-f44, 0.0, 1.0))) + ((f29.xyz * (f29.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f58 * f34)) * (((((((CB0[35].xyz * f63) + (CB0[37].xyz * f64)) + (CB0[39].xyz * f65)) + (CB0[36].xyz * f66)) + (CB0[38].xyz * f67)) + (CB0[40].xyz * f68)) + (((((((CB0[29].xyz * f63) + (CB0[31].xyz * f64)) + (CB0[33].xyz * f65)) + (CB0[30].xyz * f66)) + (CB0[32].xyz * f67)) + (CB0[34].xyz * f68)) * f31)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f31))) * mix(f22.xyz, f39, vec3(VARYING7.w))) + ((((f53 * (((f54 + (f54 * f54)) / (((f55 * f55) * ((f49 * 3.0) + 0.5)) * ((f48 * 0.75) + 0.25))) * f46)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f41, f39, vec3(f31)) * f58) * f34));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = VARYING2.w;
    float f74 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[13].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[14].xyz.x : f75.x, f76.y ? CB0[14].xyz.y : f75.y, f76.z ? CB0[14].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec4 f85 = f84;
    f85.w = VARYING2.w;
    _entryPointOutput = f85;
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
