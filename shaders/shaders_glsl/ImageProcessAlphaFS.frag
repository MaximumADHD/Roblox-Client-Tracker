#version 110

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    gl_FragData[0] = vec4(dot(f1, CB1[1].xyz) + CB1[1].w, dot(f1, CB1[2].xyz) + CB1[2].w, dot(f1, CB1[3].xyz) + CB1[3].w, f0.w);
}

//$$Texture0Texture=s0
