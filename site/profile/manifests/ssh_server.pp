class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTy6xJqYx/rJqNOBgScqchOSbmOAqqwkfhN8u49qtFgTCGshp0Cn3iuoceFXfcAUEPpsP1gamNTLMcQ1sYwHVdxlY089qwgUcgogo+aZXGd12fKg9fo0RbTHzhQHxPCLeEmEUHkIHh/y8EaOKV/brNCQ+J9ImsAiOkydnXC3o2FnuDP4S31PaxUocJGwygBKLSATsyvkVQzctNhvXs49sAL2jCvkGsEsEuHH/l5bPpvpfn9s3CAQckIjLIpZ3qOdVN8wdFWb1JUeQEjusFe7YdUkVVXQt00Nd+6c708USiol3CX4CUdGlW1G5Y0apGAokwSBFdGmyOjBq3IH9r8gdn',
	}  
}
