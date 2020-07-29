#version 110

#extension GL_ARB_shading_language_include : require
#include <Instance.h>
#include <Globals.h>
uniform vec4 CB1[384];
uniform vec4 CB0[52];
attribute vec4 POSITION;
attribute vec4 NORMAL;
varying vec3 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec4 v0 = vec4((POSITION.xyz * 0.0078740157186985015869140625) - vec3(1.0), 1.0);
    vec4 v1 = vec4(dot(CB1[gl_InstanceID * 3 + 0], v0), dot(CB1[gl_InstanceID * 3 + 1], v0), dot(CB1[gl_InstanceID * 3 + 2], v0), 1.0);
    float v2 = (POSITION.w * 0.0078740157186985015869140625) - 1.0;
    float v3 = (NORMAL.x * 0.0078740157186985015869140625) - 1.0;
    float v4 = (1.0 - abs(v2)) - abs(v3);
    vec3 v5 = vec3(v2, v3, v4);
    float v6 = clamp(-v4, 0.0, 1.0);
    vec2 v7 = vec2(v6);
    vec2 v8 = vec2(-v6);
    vec2 v9 = v5.xy;
    bvec2 v10 = greaterThanEqual(v9, vec2(0.0));
    vec2 v11 = v9 + vec2(v10.x ? v8.x : v7.x, v10.y ? v8.y : v7.y);
    vec3 v12 = vec3(v11.x, v11.y, v5.z);
    float v13 = dot(normalize(vec3(dot(CB1[gl_InstanceID * 3 + 0].xyz, v12), dot(CB1[gl_InstanceID * 3 + 1].xyz, v12), dot(CB1[gl_InstanceID * 3 + 2].xyz, v12))), -CB0[11].xyz);
    vec3 v14 = NORMAL.yzw * vec3(0.0039215688593685626983642578125);
    gl_Position = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = ((((CB0[10].xyz * clamp(v13, 0.0, 1.0)) + (CB0[12].xyz * clamp(-v13, 0.0, 1.0))) + CB0[8].xyz) + CB0[9].xyz) * (v14 * v14);
    VARYING1 = CB0[7].xyz - v1.xyz;
}

