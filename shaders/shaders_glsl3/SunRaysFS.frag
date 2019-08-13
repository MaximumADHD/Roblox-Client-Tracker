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
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec2 _419 = CB1[1].xy - VARYING1.xy;
    vec2 _425 = (sign(_419) - VARYING1.xy) / _419;
    float _427 = _425.x;
    float _434 = _425.y;
    vec2 _344 = (((VARYING1.xy - CB1[1].xy) * 0.5) * min(min((_427 < 0.0) ? 1.0 : _427, (_434 < 0.0) ? 1.0 : _434), 1.0)) * 0.083333335816860198974609375;
    vec2 _371 = (VARYING0 + (_344 * texture(Texture1Texture, (VARYING0 * CB1[0].xy) * vec2(0.125)).x)) - _344;
    vec2 _511 = _371 - _344;
    vec2 _525 = _511 - _344;
    vec2 _539 = _525 - _344;
    vec2 _553 = _539 - _344;
    vec2 _567 = _553 - _344;
    vec2 _581 = _567 - _344;
    vec2 _595 = _581 - _344;
    vec2 _609 = _595 - _344;
    vec2 _623 = _609 - _344;
    vec2 _637 = _623 - _344;
    _entryPointOutput = vec4(CB1[3].xyz * ((((((((((((((0.0 + float(texture(Texture0Texture, _371).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _511).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _525).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _539).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _553).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _567).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _581).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _595).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _609).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _623).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _637).x >= 0.999000012874603271484375)) + float(texture(Texture0Texture, _637 - _344).x >= 0.999000012874603271484375)) * CB1[2].x) * ((1.0 - CB1[2].z) * pow(clamp((1.0 + CB1[2].z) - ((2.0 * CB1[2].y) * dot(normalize(vec3((VARYING1.xy * CB1[4].xy) + CB1[4].zw, -1.0)), vec3(CB1[1].zw, CB1[2].w))), 0.0, 1.0), -1.5))), 1.0);
}

//$$Texture1Texture=s1
//$$Texture0Texture=s0
