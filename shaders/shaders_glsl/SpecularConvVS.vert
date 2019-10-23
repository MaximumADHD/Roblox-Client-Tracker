#version 110

struct ParamsIBL
{
    vec4 normalTransformRow0;
    vec4 normalTransformRow1;
    vec4 normalTransformRow2;
    vec4 roughness;
};

uniform vec4 CB2[4];
attribute vec4 POSITION;
varying vec2 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec3 v0 = vec3(POSITION.xy, 1.0);
    gl_Position = POSITION;
    VARYING0 = (POSITION.xy * 0.5) + vec2(0.5);
    VARYING1 = vec3(dot(CB2[0].xyz, v0), dot(CB2[1].xyz, v0), dot(CB2[2].xyz, v0));
}

