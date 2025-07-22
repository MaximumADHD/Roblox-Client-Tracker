#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GridParam.h>
uniform vec4 CB0[61];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (CB0[11].xyz - VARYING3.xyz) * CB3[0].x;
    vec3 f1 = abs(VARYING4.xyz);
    float f2 = f1.x;
    float f3 = f1.y;
    float f4 = f1.z;
    vec2 f5;
    if ((f2 >= f3) && (f2 >= f4))
    {
        f5 = f0.yz;
    }
    else
    {
        vec2 f6;
        if ((f3 >= f2) && (f3 >= f4))
        {
            f6 = f0.xz;
        }
        else
        {
            f6 = f0.xy;
        }
        f5 = f6;
    }
    vec4 f7 = texture(DiffuseMapTexture, f5);
    vec4 f8 = f7 * VARYING1;
    vec3 f9 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f10 = f8.xyz;
    vec3 f11 = f10 * f10;
    vec4 f12 = f8;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    float f15 = length(VARYING3.xyz);
    vec3 f16 = VARYING3.xyz / vec3(f15);
    float f17 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f18 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f19 = -f16;
    vec3 f20 = reflect(f19, f9);
    vec3 f21 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f22 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING2.yzx - (VARYING2.yzx * f22);
    vec4 f24 = texture(LightMapTexture, f23);
    vec4 f25 = texture(LightGridSkylightTexture, f23);
    vec4 f26 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f27 = mix(f24, vec4(0.0), f26);
    vec4 f28 = mix(f25, vec4(1.0), f26);
    float f29 = f28.x;
    vec4 f30 = texture(ShadowMapTexture, f21.xy);
    float f31 = f21.z;
    float f32 = f18 * 5.0;
    vec3 f33 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f20;
    bvec3 f34 = bvec3(!(CB0[58].x == 2.0));
    vec3 f35 = vec4(f20, f32).xyz;
    vec3 f36 = textureLod(PrefilteredEnvIndoorTexture, f35, f32).xyz;
    vec3 f37;
    if (CB0[32].w == 0.0)
    {
        f37 = f36;
    }
    else
    {
        f37 = mix(f36, textureLod(PrefilteredEnvBlendTargetTexture, f35, f32).xyz, vec3(CB0[32].w));
    }
    vec4 f38 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f9, f16))));
    float f39 = f38.x;
    float f40 = f38.y;
    vec3 f41 = ((vec3(0.039999999105930328369140625) * f39) + vec3(f40)) / vec3(f39 + f40);
    vec3 f42 = f9 * f9;
    bvec3 f43 = lessThan(f9, vec3(0.0));
    vec3 f44 = vec3(f43.x ? f42.x : vec3(0.0).x, f43.y ? f42.y : vec3(0.0).y, f43.z ? f42.z : vec3(0.0).z);
    vec3 f45 = f42 - f44;
    float f46 = f45.x;
    float f47 = f45.y;
    float f48 = f45.z;
    float f49 = f44.x;
    float f50 = f44.y;
    float f51 = f44.z;
    vec3 f52 = -CB0[16].xyz;
    float f53 = dot(f9, f52) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[29].z + (CB0[29].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f28.y);
    vec3 f54 = normalize(f16 + f52);
    float f55 = clamp(f53, 0.0, 1.0);
    float f56 = f18 * f18;
    float f57 = max(0.001000000047497451305389404296875, dot(f9, f54));
    float f58 = dot(f52, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (vec3(0.039999999105930328369140625) * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    vec3 f65 = (((((((vec3(1.0) - (f41 * f17)) * (((((((CB0[40].xyz * f46) + (CB0[42].xyz * f47)) + (CB0[44].xyz * f48)) + (CB0[41].xyz * f49)) + (CB0[43].xyz * f50)) + (CB0[45].xyz * f51)) + (((((((CB0[34].xyz * f46) + (CB0[36].xyz * f47)) + (CB0[38].xyz * f48)) + (CB0[35].xyz * f49)) + (CB0[37].xyz * f50)) + (CB0[39].xyz * f51)) * f29))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f29)) * 1.0)) + ((((vec3(1.0) - (f62 * f17)) * CB0[15].xyz) * f55) + (CB0[17].xyz * clamp(-f53, 0.0, 1.0)))) + (f27.xyz * (f27.w * 120.0))) * f14.xyz) + (((mix(f37, textureLod(PrefilteredEnvTexture, vec4(vec3(f34.x ? f33.x : f20.x, f34.y ? f33.y : f20.y, f34.z ? f33.z : f20.z), f32).xyz, f32).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f20.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f29)) * f41) * f17) + (((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[15].xyz) * 1.0));
    vec4 f66 = vec4(0.0);
    f66.x = f65.x;
    vec4 f67 = f66;
    f67.y = f65.y;
    vec4 f68 = f67;
    f68.z = f65.z;
    float f69 = f8.w;
    vec4 f70 = f68;
    f70.w = f69;
    float f71 = clamp(exp2((CB0[18].z * f15) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f72 = textureLod(PrefilteredEnvTexture, vec4(f19, 0.0).xyz, max(CB0[18].y, f71) * 5.0).xyz;
    bvec3 f73 = bvec3(!(CB0[18].w == 0.0));
    vec3 f74 = mix(vec3(f73.x ? CB0[19].xyz.x : f72.x, f73.y ? CB0[19].xyz.y : f72.y, f73.z ? CB0[19].xyz.z : f72.z), f70.xyz, vec3(f71));
    vec4 f75 = f70;
    f75.x = f74.x;
    vec4 f76 = f75;
    f76.y = f74.y;
    vec4 f77 = f76;
    f77.z = f74.z;
    vec3 f78 = sqrt(clamp(f77.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f79 = f77;
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec4 f82 = f81;
    f82.w = f69;
    _entryPointOutput = f82;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
