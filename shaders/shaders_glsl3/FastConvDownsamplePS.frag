#version 150

uniform vec4 CB3[1];
uniform samplerCube envMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = VARYING0.x * 2.0;
    float f1 = 0.75 * CB3[0].z;
    float f2 = f0 - f1;
    float f3 = f2 - 1.0;
    float f4 = f0 + f1;
    float f5 = f4 - 1.0;
    float f6 = VARYING0.y * (-2.0);
    float f7 = CB3[0].z * (-0.75);
    float f8 = f6 - f7;
    float f9 = f8 + 1.0;
    float f10 = f6 + f7;
    float f11 = f10 + 1.0;
    float f12 = f3 * f3;
    float f13 = f9 * f9;
    float f14 = (f12 + f13) + 1.0;
    float f15 = f14 * sqrt(f14);
    float f16 = f5 * f5;
    float f17 = (f16 + f13) + 1.0;
    float f18 = f17 * sqrt(f17);
    float f19 = f11 * f11;
    float f20 = (f12 + f19) + 1.0;
    float f21 = f20 * sqrt(f20);
    float f22 = (f16 + f19) + 1.0;
    float f23 = f22 * sqrt(f22);
    float f24 = 0.5 / (((f15 + f18) + f21) + f23);
    int f25 = int(CB3[0].w);
    vec3 f26;
    switch (f25)
    {
        case 0:
        {
            vec3 f27 = vec3(0.0);
            f27.x = 1.0;
            vec3 f28 = f27;
            f28.y = f9;
            vec3 f29 = f28;
            f29.z = 1.0 - f2;
            f26 = f29;
            break;
        }
        case 1:
        {
            vec3 f30 = vec3(0.0);
            f30.x = -1.0;
            vec3 f31 = f30;
            f31.y = f9;
            vec3 f32 = f31;
            f32.z = f3;
            f26 = f32;
            break;
        }
        case 2:
        {
            vec3 f33 = vec3(0.0);
            f33.x = f3;
            vec3 f34 = f33;
            f34.y = 1.0;
            vec3 f35 = f34;
            f35.z = (-1.0) - f8;
            f26 = f35;
            break;
        }
        case 3:
        {
            vec3 f36 = vec3(0.0);
            f36.x = f3;
            vec3 f37 = f36;
            f37.y = -1.0;
            vec3 f38 = f37;
            f38.z = f9;
            f26 = f38;
            break;
        }
        case 4:
        {
            vec3 f39 = vec3(0.0);
            f39.x = f3;
            vec3 f40 = f39;
            f40.y = f9;
            vec3 f41 = f40;
            f41.z = 1.0;
            f26 = f41;
            break;
        }
        default:
        {
            vec3 f42 = vec3(0.0);
            f42.x = 1.0 - f2;
            vec3 f43 = f42;
            f43.y = f9;
            vec3 f44 = f43;
            f44.z = -1.0;
            f26 = f44;
            break;
        }
    }
    vec3 f45;
    switch (f25)
    {
        case 0:
        {
            vec3 f46 = vec3(0.0);
            f46.x = 1.0;
            vec3 f47 = f46;
            f47.y = f9;
            vec3 f48 = f47;
            f48.z = 1.0 - f4;
            f45 = f48;
            break;
        }
        case 1:
        {
            vec3 f49 = vec3(0.0);
            f49.x = -1.0;
            vec3 f50 = f49;
            f50.y = f9;
            vec3 f51 = f50;
            f51.z = f5;
            f45 = f51;
            break;
        }
        case 2:
        {
            vec3 f52 = vec3(0.0);
            f52.x = f5;
            vec3 f53 = f52;
            f53.y = 1.0;
            vec3 f54 = f53;
            f54.z = (-1.0) - f8;
            f45 = f54;
            break;
        }
        case 3:
        {
            vec3 f55 = vec3(0.0);
            f55.x = f5;
            vec3 f56 = f55;
            f56.y = -1.0;
            vec3 f57 = f56;
            f57.z = f9;
            f45 = f57;
            break;
        }
        case 4:
        {
            vec3 f58 = vec3(0.0);
            f58.x = f5;
            vec3 f59 = f58;
            f59.y = f9;
            vec3 f60 = f59;
            f60.z = 1.0;
            f45 = f60;
            break;
        }
        default:
        {
            vec3 f61 = vec3(0.0);
            f61.x = 1.0 - f4;
            vec3 f62 = f61;
            f62.y = f9;
            vec3 f63 = f62;
            f63.z = -1.0;
            f45 = f63;
            break;
        }
    }
    vec3 f64;
    switch (f25)
    {
        case 0:
        {
            vec3 f65 = vec3(0.0);
            f65.x = 1.0;
            vec3 f66 = f65;
            f66.y = f11;
            vec3 f67 = f66;
            f67.z = 1.0 - f2;
            f64 = f67;
            break;
        }
        case 1:
        {
            vec3 f68 = vec3(0.0);
            f68.x = -1.0;
            vec3 f69 = f68;
            f69.y = f11;
            vec3 f70 = f69;
            f70.z = f3;
            f64 = f70;
            break;
        }
        case 2:
        {
            vec3 f71 = vec3(0.0);
            f71.x = f3;
            vec3 f72 = f71;
            f72.y = 1.0;
            vec3 f73 = f72;
            f73.z = (-1.0) - f10;
            f64 = f73;
            break;
        }
        case 3:
        {
            vec3 f74 = vec3(0.0);
            f74.x = f3;
            vec3 f75 = f74;
            f75.y = -1.0;
            vec3 f76 = f75;
            f76.z = f11;
            f64 = f76;
            break;
        }
        case 4:
        {
            vec3 f77 = vec3(0.0);
            f77.x = f3;
            vec3 f78 = f77;
            f78.y = f11;
            vec3 f79 = f78;
            f79.z = 1.0;
            f64 = f79;
            break;
        }
        default:
        {
            vec3 f80 = vec3(0.0);
            f80.x = 1.0 - f2;
            vec3 f81 = f80;
            f81.y = f11;
            vec3 f82 = f81;
            f82.z = -1.0;
            f64 = f82;
            break;
        }
    }
    vec3 f83;
    switch (f25)
    {
        case 0:
        {
            vec3 f84 = vec3(0.0);
            f84.x = 1.0;
            vec3 f85 = f84;
            f85.y = f11;
            vec3 f86 = f85;
            f86.z = 1.0 - f4;
            f83 = f86;
            break;
        }
        case 1:
        {
            vec3 f87 = vec3(0.0);
            f87.x = -1.0;
            vec3 f88 = f87;
            f88.y = f11;
            vec3 f89 = f88;
            f89.z = f5;
            f83 = f89;
            break;
        }
        case 2:
        {
            vec3 f90 = vec3(0.0);
            f90.x = f5;
            vec3 f91 = f90;
            f91.y = 1.0;
            vec3 f92 = f91;
            f92.z = (-1.0) - f10;
            f83 = f92;
            break;
        }
        case 3:
        {
            vec3 f93 = vec3(0.0);
            f93.x = f5;
            vec3 f94 = f93;
            f94.y = -1.0;
            vec3 f95 = f94;
            f95.z = f11;
            f83 = f95;
            break;
        }
        case 4:
        {
            vec3 f96 = vec3(0.0);
            f96.x = f5;
            vec3 f97 = f96;
            f97.y = f11;
            vec3 f98 = f97;
            f98.z = 1.0;
            f83 = f98;
            break;
        }
        default:
        {
            vec3 f99 = vec3(0.0);
            f99.x = 1.0 - f4;
            vec3 f100 = f99;
            f100.y = f11;
            vec3 f101 = f100;
            f101.z = -1.0;
            f83 = f101;
            break;
        }
    }
    _entryPointOutput = (((textureLod(envMapTexture, vec4(f26, CB3[0].x).xyz, CB3[0].x) * ((f15 * f24) + 0.125)) + (textureLod(envMapTexture, vec4(f45, CB3[0].x).xyz, CB3[0].x) * ((f18 * f24) + 0.125))) + (textureLod(envMapTexture, vec4(f64, CB3[0].x).xyz, CB3[0].x) * ((f21 * f24) + 0.125))) + (textureLod(envMapTexture, vec4(f83, CB3[0].x).xyz, CB3[0].x) * ((f23 * f24) + 0.125));
}

//$$envMapTexture=s0
