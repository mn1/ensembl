=head1 mappping_conf.pl

=head2 Description

This script gives the basic configuration needed by the mapping. This configuration script will be used by each script of the mapping. 

For some documentation, see below and the file call protein_mapping.txt in the Ensembl-doc cvs repository.

=head2 Contact

Emmanuel Mongin (mongin@ebi.ac.uk)

=cut





BEGIN {
package main;

%mapping_conf = ( 

             #################
             #General options#
             #################

             #This option allows to check for dodgy matched ensembl peptides and don't load them into the database (see pmatch code for more details)
             #'check'      => 'yes',
             'check'      => '',

             #This option sets up the threshold for the query identity (in that case we don't take any match where the query identity (in our case Ensembl identity) is below 50%
             #'query_idt'  => 50,
             'query_idt'    => ,

             #IDEM for the target identity
             #'target_idt  => 50,
             'target_idt'  => ,
 
             #Location of the statistic file (only neede if you run get_stats.pl)
             #'statistic'  => '/work1/mongin/mapping/stats.txt',
             'statistic'  => '',

             ################################ 
	     # Files location (Input/Output)#
             ################################


             #Location of the query peptide file (eg: Ensembl predicted protein) 
             #'query'        => '/work1/mongin/mapping/primary/ensembl110.pep',
             'query'       => '',   
             
             #Location of the sptr file, this file will be used as an input to grep the specific sp entries to the organism using grep_sp_entries.pl. This file is supposed to be in SP format
             #'total_sptr'  => '/work1/mongin/mapping/primary/sptr.txl',
             'total_sptr'  => '',

             #Location of the sptr file in fasta format containing the entries specific to the organism
	     #'sptr_fa'      => '/work1/mongin/mapping/primary/HS.f',
	     'sptr_fa'      => '',
	     
             #Location of the sptr file in Swiss-Prot format containing the entries specific to the organism
	     #'sptr_swiss'      => '/work1/mongin/mapping/primary/HS.SPTR',
	     'sptr_swiss'      => '',
	     
             
	     
             #Location of the file containing all refseq and all SP in fasta format (This file will be produced by runni             ng prepare_proteome.pl)
             #'human_fa'    => '/work1/mongin/mapping/kate/refseq_p.fa',
	     'pmatch_input_fa'    => '',

             #Output file containing the mapping of SP and refseq sequences to external databases
             #'x_map'  => '/work1/mongin/mapping/outputs/xmap_out1.txt',
             'x_map_out'  => '',

             #Output file from pmatch.pl and input file for maps2db.pl
             #'human_map'  => '/work1/mongin/mapping/outputs/pmatch_human1.txt',
             'pmatch_out'  => '',


             #Location of the Refseq (proteins) file in fasta format
	     #'refseq_fa'    => '/work1/mongin/mapping/primary/refseq.fa',
	     'refseq'    => '',
	     
             #Location of the Refseq (proteins) file in Genbank format
	     #'refseq_gnp'    => '/work1/mongin/mapping/primary/refseq.gnp',
	     'refseq_gnp'    => '',

             ############################################
             #Organism specific files for the X_mapping #
             ############################################
                  
                  #######
                  #Human#
                  #######

                  #ens1 and ens4, location of files used for Hugo mapping (http://www.gene.ucl.ac.uk/public-files/nomen/),                   th is files will be used only for human
	          #'ens1'      => '/work1/mongin/mapping/primary/ens1.txt',
	          'ens1'      => '',

	          #'ens4'      => '/work1/mongin/mapping/primary/ens4.txt',
	          'ens4'      => '',

                  #######
                  #Mouse#
                  #######

                  #The files needed for the mouse X_mapping can be obatained there: ftp://ftp.informatics.jax.org/pub/informatics/reports/   
                  #2 files are needed MRK_SwissProt.rpt and MRK_LocusLink.rpt
                  
                   #File containing MGI/SP mapping (MRK_SwissProt.rpt)
                   #'mgi_sp'  => '',
                   'mgi_sp'  => '',

                   #File containing MGI/LocusLink mapping (MRK_LocusLink.rpt)
                   #'mgi_locus'  => '',
                   'mgi_locus'  => '',

                   


             ###################
             #Database handling#
             ###################

             #DB name
             #'db' => 'proteintest',
             'db' => '',

             #Host name
             #'host' => 'ecs1d',
             'host' => '',

             #User
             'dbuser' => '',

             #Password
             'password' => '',
             
             #####################
             #Executable location#
             #####################

             #Location for pmatch binaries
             #'pmatch' => '/nfs/disk65/ms2/bin/pmatch'
             'pmatch' => '',

             ##############################
             #Organism related information#
             ##############################

             #Name of the organism studied. Current keywords used(or planned to be used): human, drosophila, mouse
             #You can adapt the other scripts given the organisms (eg: do some specific x_mapping for a given organism)
             #'organism' => 'human'
             'organism' => '',
             

             #OX (Organism taxonomy cross-reference) number
             #'ox' => '9606'
             'ox' => ''

 );


}

1;
