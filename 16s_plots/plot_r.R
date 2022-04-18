source("mdp_io.R")
source("general_io.R")
source("general_load_libs.R")
source("general_graphics.R")
source("general_misc.R")
source("general_proc.R")
source("general_anal.R")
source("general_multivar.R")

mbSet<-Init.mbSetObj()
mbSet<-SetModuleType(mbSet, "mdp")
mbSet<-ReadSampleTable(mbSet, "group_mpd _Young control v. young cancer .csv");
mbSet<-Read16SAbundData(mbSet, "genus_table_mdp_BEN.csv","text","SILVA","T");
mbSet<-SanityCheckData(mbSet, "text");
mbSet<-PlotLibSizeView(mbSet, "norm_libsizes_0","png");
mbSet<-CreatePhyloseqObj(mbSet, "text","SILVA","T")
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
mbSet<-PerformNormalization(mbSet, "none", "none", "clr");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_bray_Young control v. young cancer","PCoA","bray","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_jaccard_Young control v. young cancer","PCoA","jaccard","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Shannon_Young control v. young cancer","Shannon","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Shannon_Young control v. young cancer","Shannon","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Observed_Young control v. young cancer","Observed","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Observed_Young control v. young cancer","Observed","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Simpson_Young control v. young cancer","Simpson","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Simpson_Young control v. young cancer","Simpson","Response","default", "svg");

mbSet<-Init.mbSetObj()
mbSet<-SetModuleType(mbSet, "mdp")
mbSet<-ReadSampleTable(mbSet, "group_mpd _Old control v. old cancer .csv");
mbSet<-Read16SAbundData(mbSet, "genus_table_mdp_BEN.csv","text","SILVA","T");
mbSet<-SanityCheckData(mbSet, "text");
mbSet<-PlotLibSizeView(mbSet, "norm_libsizes_0","png");
mbSet<-CreatePhyloseqObj(mbSet, "text","SILVA","T")
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
mbSet<-PerformNormalization(mbSet, "none", "none", "clr");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_bray_group_mpd _Old control v. old cancer","PCoA","bray","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver__jaccard_group_mpd _Old control v. old cancer","PCoA","jaccard","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Old control v. old cancer","Shannon","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Old control v. old cancer","Shannon","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Observed_Old control v. old cancer","Observed","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Observed_Old control v. old cancer","Observed","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Simpson_Old control v. old cancer","Simpson","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Simpson_Old control v. old cancer","Simpson","Response","default", "svg");



mbSet<-Init.mbSetObj()
mbSet<-SetModuleType(mbSet, "mdp")
mbSet<-ReadSampleTable(mbSet, "group_mpd_Young v. old.csv");
mbSet<-Read16SAbundData(mbSet, "genus_table_mdp_BEN.csv","text","SILVA","T");
mbSet<-SanityCheckData(mbSet, "text");
mbSet<-PlotLibSizeView(mbSet, "norm_libsizes_0","png");
mbSet<-CreatePhyloseqObj(mbSet, "text","SILVA","T")
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
mbSet<-PerformNormalization(mbSet, "none", "none", "clr");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver__bray_group_mpd _group_mpd_Young v. old","PCoA","bray","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_jaccard_group_mpd _group_mpd_Young v. old","PCoA","jaccard","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Young v. old","Shannon","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Young v. old","Shannon","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Observed_Young v. old","Observed","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Observed_Young v. old","Observed","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Simpson_Young v. old","Simpson","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Simpson_Young v. old","Simpson","Response","default", "svg");

mbSet<-Init.mbSetObj()
mbSet<-SetModuleType(mbSet, "mdp")
mbSet<-ReadSampleTable(mbSet, "group_mpd.csv");
mbSet<-Read16SAbundData(mbSet, "genus_table_mdp_BEN.csv","text","SILVA","T");
mbSet<-SanityCheckData(mbSet, "text");
mbSet<-PlotLibSizeView(mbSet, "norm_libsizes_0","png");
mbSet<-CreatePhyloseqObj(mbSet, "text","SILVA","T")
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
mbSet<-PerformNormalization(mbSet, "none", "none", "clr");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_bray_all","PCoA","bray","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_jaccard_all","PCoA","jaccard","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_all","Shannon","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_all","Shannon","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Observed_all","Observed","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Observed_all","Observed","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Simpson_all","Simpson","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Simpson_all","Simpson","Response","default", "svg");


mbSet<-Init.mbSetObj()
mbSet<-SetModuleType(mbSet, "mdp")
mbSet<-ReadSampleTable(mbSet, "group_mpd _Young control v. young cancer .csv");
mbSet<-Read16SAbundData(mbSet, "genus_table_mdp_BEN.csv","text","SILVA","T");
mbSet<-SanityCheckData(mbSet, "text");
mbSet<-PlotLibSizeView(mbSet, "norm_libsizes_0","png");
mbSet<-CreatePhyloseqObj(mbSet, "text","SILVA","T")
mbSet<-ApplyAbundanceFilter(mbSet, "prevalence", 4, 0.2);
mbSet<-ApplyVarianceFilter(mbSet, "iqr", 0.1);
mbSet<-PerformNormalization(mbSet, "none", "none", "clr");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_bray_group_mpd _Young control v. young cancer","PCoA","bray","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");
mbSet<-PlotBetaDiversity(mbSet, "beta_diver_jaccard_group_mpd _Young control v. young cancer","PCoA","jaccard","expfac","Response","none","Genus","Ruminiclostridium_9","Shannon", "yes", "svg", 72, "default");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Young control v. young cancer","Shannon","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Young control v. young cancer","Shannon","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Observed_Young control v. young cancer","Observed","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Observed_Young control v. young cancer","Observed","Response","default", "svg");

mbSet<-PlotAlphaData(mbSet, "filt","alpha_diver_Simpson_Young control v. young cancer","Simpson","Response","Genus", "default", "svg");
mbSet<-PlotAlphaBoxData(mbSet, "alpha_diverbox_Simpson_Young control v. young cancer","Simpson","Response","default", "svg");

