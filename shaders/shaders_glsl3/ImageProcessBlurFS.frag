#version 150

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
uniform sampler2D Texture1Texture;
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = mix(texture(Texture0Texture, VARYING0), texture(Texture1Texture, VARYING0), vec4(CB1[4].x)).xyz;
    _entryPointOutput = vec4(dot(f0, CB1[1].xyz) + CB1[1].w, dot(f0, CB1[2].xyz) + CB1[2].w, dot(f0, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture1Texture=s1
//$$Texture0Texture=s0
