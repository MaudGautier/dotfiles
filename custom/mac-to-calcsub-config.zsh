# SSH to CALCSUB (Curie)

## Aliases
alias csub='ssh mgautie3@calcsub.curie.fr'
alias cs='csub'

## Functions
### Create sshfs mountpoints
mkmount () {
	unm
	sshfs -o reconnect mgautie3@sotrel.curie.fr:/data/users/mgautie3 /Users/maudgautier/OSXFUSE-calcsub/
	sshfs -o reconnect mgautie3@sotrel.curie.fr:/data/kdi_prod/.kdi/project_tmp_0/726/acl/26.01/ /Users/maudgautier/OSXFUSE-calcsub-scEwS-remap-on-mouse-and-human/
	sshfs -o reconnect mgautie3@sotrel.curie.fr:/data/kdi_prod/project_result/726/26.02/ /Users/maudgautier/OSXFUSE-calcsub-tumors-nadege/
	sshfs -o reconnect mgautie3@sotrel.curie.fr:/data/kdi_prod/project_result/726/27.01/ /Users/maudgautier/OSXFUSE-calcsub-scallop-julien/
	sshfs -o reconnect mgautie3@sotrel.curie.fr:/data/kdi_prod/project_result/726/27.02/ /Users/maudgautier/OSXFUSE-calcsub-arms-julien/
	sshfs -o reconnect mgautie3@sotrel.curie.fr:/data/kdi_prod/project_result/726/27.03/ /Users/maudgautier/OSXFUSE-calcsub-dsrct-julien/
}
# NB: mgautie3@sotrel.curie.fr is equivalent to : mgautie3@10.200.10.124

### Unmount sshfs connections
unm () {
	umount /Users/maudgautier/OSXFUSE-calcsub/
	umount /Users/maudgautier/OSXFUSE-calcsub-scEwS-remap-on-mouse-and-human/
	umount /Users/maudgautier/OSXFUSE-calcsub-tumors-nadege/
	umount /Users/maudgautier/OSXFUSE-calcsub-scallop-julien/
	umount /Users/maudgautier/OSXFUSE-calcsub-arms-julien/
	umount /Users/maudgautier/OSXFUSE-calcsub-dsrct-julien/
}

