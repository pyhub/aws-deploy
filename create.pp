ec2_instance { 'puppet-agent-1':
  ensure            => present,
  region            => 'us-west-2',
  availability_zone => 'us-west-2a',
  subnet            => 'puppet-master-sg',
  image_id          => 'ami-9abea4fb',
  instance_type     => 't2.micro',
  monitoring        => false,
  key_name          => 'protonmail-east',
  iam_instance_profile_name	=> 's3-fullaccess',
  security_groups   => ['default'],
  user_data         => template('/home/ubuntu/deploy.sh'),
  tags              => {
    tag_name => 'docker-test-agent-1',
  },
}
