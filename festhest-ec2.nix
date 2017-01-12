let
  region = "us-east-1";
  accessKeyId = "festhest";
in
{
  festhest = { resources, ...}: {
    deployment.targetEnv = "ec2";
    deployment.ec2 = {
      accessKeyId = accessKeyId;
      region = region;
      instanceType = "t2.micro";
      keyPair = resources.ec2KeyPairs.festhest-keys;
    };
  };

  resources.ec2KeyPairs.festhest-keys = { inherit region accessKeyId; };
}
