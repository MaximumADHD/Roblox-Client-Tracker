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
uniform sampler2D Texture0Texture;
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 _283 = texture(Texture0Texture, VARYING0).xyz;
    vec3 _293 = texture(Texture3Texture, VARYING0).xyz;
    vec3 _318 = texture(Texture2Texture, VARYING0).xyz * CB1[4].w;
    vec3 _332 = (((_283 * _283) * 4.0) + ((_293 * _293) * 4.0)) + (_318 * _318);
    vec3 _371 = _332 * CB1[5].x;
    vec3 _389 = ((_332 * (_371 + vec3(CB1[5].y))) / ((_332 * (_371 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    _entryPointOutput = vec4(dot(_389, CB1[1].xyz) + CB1[1].w, dot(_389, CB1[2].xyz) + CB1[2].w, dot(_389, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
