# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.7
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package McnpTools;
use base qw(Exporter);
use base qw(DynaLoader);
package McnpToolsc;
bootstrap McnpTools;
package McnpTools;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package McnpTools;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package McnpTools;

*l3dinfo = *McnpToolsc::l3dinfo;
*mergeMctalKcodes = *McnpToolsc::mergeMctalKcodes;
*mergeMctalTallies = *McnpToolsc::mergeMctalTallies;
*__and__ = *McnpToolsc::__and__;
*mergeMeshtalTallies = *McnpToolsc::mergeMeshtalTallies;
*mergeMctals = *McnpToolsc::mergeMctals;
*mergeMeshtals = *McnpToolsc::mergeMeshtals;

############# Class : McnpTools::vector_int ##############

package McnpTools::vector_int;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_vector_int(@_);
    bless $self, $pkg if defined($self);
}

*size = *McnpToolsc::vector_int_size;
*empty = *McnpToolsc::vector_int_empty;
*clear = *McnpToolsc::vector_int_clear;
*push = *McnpToolsc::vector_int_push;
*pop = *McnpToolsc::vector_int_pop;
*get = *McnpToolsc::vector_int_get;
*set = *McnpToolsc::vector_int_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_vector_int($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::vector_double ##############

package McnpTools::vector_double;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_vector_double(@_);
    bless $self, $pkg if defined($self);
}

*size = *McnpToolsc::vector_double_size;
*empty = *McnpToolsc::vector_double_empty;
*clear = *McnpToolsc::vector_double_clear;
*push = *McnpToolsc::vector_double_push;
*pop = *McnpToolsc::vector_double_pop;
*get = *McnpToolsc::vector_double_get;
*set = *McnpToolsc::vector_double_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_vector_double($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::vector_string ##############

package McnpTools::vector_string;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_vector_string(@_);
    bless $self, $pkg if defined($self);
}

*size = *McnpToolsc::vector_string_size;
*empty = *McnpToolsc::vector_string_empty;
*clear = *McnpToolsc::vector_string_clear;
*push = *McnpToolsc::vector_string_push;
*pop = *McnpToolsc::vector_string_pop;
*get = *McnpToolsc::vector_string_get;
*set = *McnpToolsc::vector_string_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_vector_string($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::vector_PtracHistory ##############

package McnpTools::vector_PtracHistory;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_vector_PtracHistory(@_);
    bless $self, $pkg if defined($self);
}

*size = *McnpToolsc::vector_PtracHistory_size;
*empty = *McnpToolsc::vector_PtracHistory_empty;
*clear = *McnpToolsc::vector_PtracHistory_clear;
*push = *McnpToolsc::vector_PtracHistory_push;
*pop = *McnpToolsc::vector_PtracHistory_pop;
*get = *McnpToolsc::vector_PtracHistory_get;
*set = *McnpToolsc::vector_PtracHistory_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_vector_PtracHistory($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::Lnk3Dnt ##############

package McnpTools::Lnk3Dnt;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_Lnk3Dnt(@_);
    bless $self, $pkg if defined($self);
}

*SLAB1D = *McnpToolsc::Lnk3Dnt_SLAB1D;
*CYL1D = *McnpToolsc::Lnk3Dnt_CYL1D;
*SPH1D = *McnpToolsc::Lnk3Dnt_SPH1D;
*XY = *McnpToolsc::Lnk3Dnt_XY;
*RZ = *McnpToolsc::Lnk3Dnt_RZ;
*RT = *McnpToolsc::Lnk3Dnt_RT;
*XYZ = *McnpToolsc::Lnk3Dnt_XYZ;
*RZT = *McnpToolsc::Lnk3Dnt_RZT;
*GetName = *McnpToolsc::Lnk3Dnt_GetName;
*GetUser = *McnpToolsc::Lnk3Dnt_GetUser;
*GetVersion = *McnpToolsc::Lnk3Dnt_GetVersion;
*GetDblparam = *McnpToolsc::Lnk3Dnt_GetDblparam;
*GetGeom = *McnpToolsc::Lnk3Dnt_GetGeom;
*GetNZone = *McnpToolsc::Lnk3Dnt_GetNZone;
*GetICourse = *McnpToolsc::Lnk3Dnt_GetICourse;
*GetJCourse = *McnpToolsc::Lnk3Dnt_GetJCourse;
*GetKCourse = *McnpToolsc::Lnk3Dnt_GetKCourse;
*GetIFine = *McnpToolsc::Lnk3Dnt_GetIFine;
*GetJFine = *McnpToolsc::Lnk3Dnt_GetJFine;
*GetKFine = *McnpToolsc::Lnk3Dnt_GetKFine;
*GetNMXSP = *McnpToolsc::Lnk3Dnt_GetNMXSP;
*SetName = *McnpToolsc::Lnk3Dnt_SetName;
*SetUser = *McnpToolsc::Lnk3Dnt_SetUser;
*SetVersion = *McnpToolsc::Lnk3Dnt_SetVersion;
*GetMaterials = *McnpToolsc::Lnk3Dnt_GetMaterials;
*GetDensities = *McnpToolsc::Lnk3Dnt_GetDensities;
*GetMaterialIds = *McnpToolsc::Lnk3Dnt_GetMaterialIds;
*SetMaterials = *McnpToolsc::Lnk3Dnt_SetMaterials;
*SetDensities = *McnpToolsc::Lnk3Dnt_SetDensities;
*Scale = *McnpToolsc::Lnk3Dnt_Scale;
*Coarsen = *McnpToolsc::Lnk3Dnt_Coarsen;
*GetIMesh = *McnpToolsc::Lnk3Dnt_GetIMesh;
*GetJMesh = *McnpToolsc::Lnk3Dnt_GetJMesh;
*GetKMesh = *McnpToolsc::Lnk3Dnt_GetKMesh;
*SetIMesh = *McnpToolsc::Lnk3Dnt_SetIMesh;
*SetJMesh = *McnpToolsc::Lnk3Dnt_SetJMesh;
*SetKMesh = *McnpToolsc::Lnk3Dnt_SetKMesh;
*ReadMaterials = *McnpToolsc::Lnk3Dnt_ReadMaterials;
*Save = *McnpToolsc::Lnk3Dnt_Save;
*Load = *McnpToolsc::Lnk3Dnt_Load;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_Lnk3Dnt($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::MctalKcode ##############

package McnpTools::MctalKcode;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
*COLLSION_KEFF = *McnpToolsc::MctalKcode_COLLSION_KEFF;
*ABSORPTION_KEFF = *McnpToolsc::MctalKcode_ABSORPTION_KEFF;
*TRACKLENGTH_KEFF = *McnpToolsc::MctalKcode_TRACKLENGTH_KEFF;
*COLLISION_PRLT = *McnpToolsc::MctalKcode_COLLISION_PRLT;
*ABSORPTION_PRLT = *McnpToolsc::MctalKcode_ABSORPTION_PRLT;
*AVG_COLLSION_KEFF = *McnpToolsc::MctalKcode_AVG_COLLSION_KEFF;
*AVG_COLLSION_KEFF_STD = *McnpToolsc::MctalKcode_AVG_COLLSION_KEFF_STD;
*AVG_ABSORPTION_KEFF = *McnpToolsc::MctalKcode_AVG_ABSORPTION_KEFF;
*AVG_ABSORPTION_KEFF_STD = *McnpToolsc::MctalKcode_AVG_ABSORPTION_KEFF_STD;
*AVG_TRACKLENGTH_KEFF = *McnpToolsc::MctalKcode_AVG_TRACKLENGTH_KEFF;
*AVG_TRACKLENGTH_KEFF_STD = *McnpToolsc::MctalKcode_AVG_TRACKLENGTH_KEFF_STD;
*AVG_COMBINED_KEFF = *McnpToolsc::MctalKcode_AVG_COMBINED_KEFF;
*AVG_COMBINED_KEFF_STD = *McnpToolsc::MctalKcode_AVG_COMBINED_KEFF_STD;
*AVG_COMBINED_KEFF_BCS = *McnpToolsc::MctalKcode_AVG_COMBINED_KEFF_BCS;
*AVG_COMBINED_KEFF_BCS_STD = *McnpToolsc::MctalKcode_AVG_COMBINED_KEFF_BCS_STD;
*COMBINED_PRLT = *McnpToolsc::MctalKcode_COMBINED_PRLT;
*COMBINED_PRLT_STD = *McnpToolsc::MctalKcode_COMBINED_PRLT_STD;
*CYCLE_NPS = *McnpToolsc::MctalKcode_CYCLE_NPS;
*AVG_COMBINED_FOM = *McnpToolsc::MctalKcode_AVG_COMBINED_FOM;
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_MctalKcode(@_);
    bless $self, $pkg if defined($self);
}

*GetValue = *McnpToolsc::MctalKcode_GetValue;
*GetCycles = *McnpToolsc::MctalKcode_GetCycles;
*GetSettle = *McnpToolsc::MctalKcode_GetSettle;
*GetNdat = *McnpToolsc::MctalKcode_GetNdat;
*SummaryString = *McnpToolsc::MctalKcode_SummaryString;
*WriteToMctal = *McnpToolsc::MctalKcode_WriteToMctal;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_MctalKcode($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::MctalTally ##############

package McnpTools::MctalTally;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
*TFC = *McnpToolsc::MctalTally_TFC;
*TFC_NPS = *McnpToolsc::MctalTally_TFC_NPS;
*TFC_VALUE = *McnpToolsc::MctalTally_TFC_VALUE;
*TFC_ERROR = *McnpToolsc::MctalTally_TFC_ERROR;
*TFC_FOM = *McnpToolsc::MctalTally_TFC_FOM;
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_MctalTally(@_);
    bless $self, $pkg if defined($self);
}

*ID = *McnpToolsc::MctalTally_ID;
*GetNextEventEstimatorType = *McnpToolsc::MctalTally_GetNextEventEstimatorType;
*GetTFCBins = *McnpToolsc::MctalTally_GetTFCBins;
*GetTFCSize = *McnpToolsc::MctalTally_GetTFCSize;
*GetTFCValue = *McnpToolsc::MctalTally_GetTFCValue;
*GetValue = *McnpToolsc::MctalTally_GetValue;
*GetError = *McnpToolsc::MctalTally_GetError;
*GetFBins = *McnpToolsc::MctalTally_GetFBins;
*GetDBins = *McnpToolsc::MctalTally_GetDBins;
*GetUBins = *McnpToolsc::MctalTally_GetUBins;
*GetSBins = *McnpToolsc::MctalTally_GetSBins;
*GetMBins = *McnpToolsc::MctalTally_GetMBins;
*GetEBins = *McnpToolsc::MctalTally_GetEBins;
*GetCBins = *McnpToolsc::MctalTally_GetCBins;
*GetTBins = *McnpToolsc::MctalTally_GetTBins;
*SummaryString = *McnpToolsc::MctalTally_SummaryString;
*WriteToMctal = *McnpToolsc::MctalTally_WriteToMctal;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_MctalTally($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::Mctal ##############

package McnpTools::Mctal;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_Mctal(@_);
    bless $self, $pkg if defined($self);
}

*GetTallyList = *McnpToolsc::Mctal_GetTallyList;
*GetCode = *McnpToolsc::Mctal_GetCode;
*GetVersion = *McnpToolsc::Mctal_GetVersion;
*GetProbid = *McnpToolsc::Mctal_GetProbid;
*GetDump = *McnpToolsc::Mctal_GetDump;
*GetNps = *McnpToolsc::Mctal_GetNps;
*GetRandoms = *McnpToolsc::Mctal_GetRandoms;
*GetComment = *McnpToolsc::Mctal_GetComment;
*GetTally = *McnpToolsc::Mctal_GetTally;
*GetKcode = *McnpToolsc::Mctal_GetKcode;
*SummaryString = *McnpToolsc::Mctal_SummaryString;
*WriteHeader = *McnpToolsc::Mctal_WriteHeader;
*IsolateTally = *McnpToolsc::Mctal_IsolateTally;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_Mctal($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::MeshtalTally ##############

package McnpTools::MeshtalTally;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
*XYZ = *McnpToolsc::MeshtalTally_XYZ;
*RZT = *McnpToolsc::MeshtalTally_RZT;
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_MeshtalTally(@_);
    bless $self, $pkg if defined($self);
}

*ID = *McnpToolsc::MeshtalTally_ID;
*GetXRBounds = *McnpToolsc::MeshtalTally_GetXRBounds;
*GetYZBounds = *McnpToolsc::MeshtalTally_GetYZBounds;
*GetZTBounds = *McnpToolsc::MeshtalTally_GetZTBounds;
*GetEBounds = *McnpToolsc::MeshtalTally_GetEBounds;
*GetTBounds = *McnpToolsc::MeshtalTally_GetTBounds;
*GetXRBins = *McnpToolsc::MeshtalTally_GetXRBins;
*GetYZBins = *McnpToolsc::MeshtalTally_GetYZBins;
*GetZTBins = *McnpToolsc::MeshtalTally_GetZTBins;
*GetEBins = *McnpToolsc::MeshtalTally_GetEBins;
*GetTBins = *McnpToolsc::MeshtalTally_GetTBins;
*GetValue = *McnpToolsc::MeshtalTally_GetValue;
*GetError = *McnpToolsc::MeshtalTally_GetError;
*GetVolume = *McnpToolsc::MeshtalTally_GetVolume;
*SummaryString = *McnpToolsc::MeshtalTally_SummaryString;
*WriteToMeshtal = *McnpToolsc::MeshtalTally_WriteToMeshtal;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_MeshtalTally($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::Meshtal ##############

package McnpTools::Meshtal;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_Meshtal(@_);
    bless $self, $pkg if defined($self);
}

*GetTallyList = *McnpToolsc::Meshtal_GetTallyList;
*GetCode = *McnpToolsc::Meshtal_GetCode;
*GetVersion = *McnpToolsc::Meshtal_GetVersion;
*GetProbid = *McnpToolsc::Meshtal_GetProbid;
*GetComment = *McnpToolsc::Meshtal_GetComment;
*GetNps = *McnpToolsc::Meshtal_GetNps;
*GetTally = *McnpToolsc::Meshtal_GetTally;
*SummaryString = *McnpToolsc::Meshtal_SummaryString;
*WriteHeader = *McnpToolsc::Meshtal_WriteHeader;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_Meshtal($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::PtracNps ##############

package McnpTools::PtracNps;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_PtracNps(@_);
    bless $self, $pkg if defined($self);
}

*NPS = *McnpToolsc::PtracNps_NPS;
*Cell = *McnpToolsc::PtracNps_Cell;
*Surface = *McnpToolsc::PtracNps_Surface;
*Tally = *McnpToolsc::PtracNps_Tally;
*Value = *McnpToolsc::PtracNps_Value;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_PtracNps($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::PtracEvent ##############

package McnpTools::PtracEvent;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_PtracEvent(@_);
    bless $self, $pkg if defined($self);
}

*Type = *McnpToolsc::PtracEvent_Type;
*BankType = *McnpToolsc::PtracEvent_BankType;
*Has = *McnpToolsc::PtracEvent_Has;
*Get = *McnpToolsc::PtracEvent_Get;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_PtracEvent($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::PtracHistory ##############

package McnpTools::PtracHistory;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_PtracHistory(@_);
    bless $self, $pkg if defined($self);
}

*GetNPS = *McnpToolsc::PtracHistory_GetNPS;
*GetNumEvents = *McnpToolsc::PtracHistory_GetNumEvents;
*GetEvent = *McnpToolsc::PtracHistory_GetEvent;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_PtracHistory($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::Ptrac ##############

package McnpTools::Ptrac;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
*BIN_PTRAC = *McnpToolsc::Ptrac_BIN_PTRAC;
*ASC_PTRAC = *McnpToolsc::Ptrac_ASC_PTRAC;
*SRC = *McnpToolsc::Ptrac_SRC;
*BNK = *McnpToolsc::Ptrac_BNK;
*SUR = *McnpToolsc::Ptrac_SUR;
*COL = *McnpToolsc::Ptrac_COL;
*TER = *McnpToolsc::Ptrac_TER;
*LST = *McnpToolsc::Ptrac_LST;
*BNK_DXT_TRACK = *McnpToolsc::Ptrac_BNK_DXT_TRACK;
*BNK_ERG_TME_SPLIT = *McnpToolsc::Ptrac_BNK_ERG_TME_SPLIT;
*BNK_WWS_SPLIT = *McnpToolsc::Ptrac_BNK_WWS_SPLIT;
*BNK_WWC_SPLIT = *McnpToolsc::Ptrac_BNK_WWC_SPLIT;
*BNK_UNC_TRACK = *McnpToolsc::Ptrac_BNK_UNC_TRACK;
*BNK_IMP_SPLIT = *McnpToolsc::Ptrac_BNK_IMP_SPLIT;
*BNK_N_XN_F = *McnpToolsc::Ptrac_BNK_N_XN_F;
*BNK_N_XG = *McnpToolsc::Ptrac_BNK_N_XG;
*BNK_FLUORESCENCE = *McnpToolsc::Ptrac_BNK_FLUORESCENCE;
*BNK_ANNIHILATION = *McnpToolsc::Ptrac_BNK_ANNIHILATION;
*BNK_PHOTO_ELECTRON = *McnpToolsc::Ptrac_BNK_PHOTO_ELECTRON;
*BNK_COMPT_ELECTRON = *McnpToolsc::Ptrac_BNK_COMPT_ELECTRON;
*BNK_PAIR_ELECTRON = *McnpToolsc::Ptrac_BNK_PAIR_ELECTRON;
*BNK_AUGER_ELECTRON = *McnpToolsc::Ptrac_BNK_AUGER_ELECTRON;
*BNK_PAIR_POSITRON = *McnpToolsc::Ptrac_BNK_PAIR_POSITRON;
*BNK_BREMSSTRAHLUNG = *McnpToolsc::Ptrac_BNK_BREMSSTRAHLUNG;
*BNK_KNOCK_ON = *McnpToolsc::Ptrac_BNK_KNOCK_ON;
*BNK_K_X_RAY = *McnpToolsc::Ptrac_BNK_K_X_RAY;
*BNK_N_XG_MG = *McnpToolsc::Ptrac_BNK_N_XG_MG;
*BNK_N_XF_MG = *McnpToolsc::Ptrac_BNK_N_XF_MG;
*BNK_N_XN_MG = *McnpToolsc::Ptrac_BNK_N_XN_MG;
*BNK_G_XG_MG = *McnpToolsc::Ptrac_BNK_G_XG_MG;
*BNK_ADJ_SPLIT = *McnpToolsc::Ptrac_BNK_ADJ_SPLIT;
*BNK_WWT_SPLIT = *McnpToolsc::Ptrac_BNK_WWT_SPLIT;
*BNK_PHOTONUCLEAR = *McnpToolsc::Ptrac_BNK_PHOTONUCLEAR;
*BNK_DECAY = *McnpToolsc::Ptrac_BNK_DECAY;
*BNK_NUCLEAR_INT = *McnpToolsc::Ptrac_BNK_NUCLEAR_INT;
*BNK_RECOIL = *McnpToolsc::Ptrac_BNK_RECOIL;
*BNK_DXTRAN_ANNIHIL = *McnpToolsc::Ptrac_BNK_DXTRAN_ANNIHIL;
*BNK_N_CHARGED_PART = *McnpToolsc::Ptrac_BNK_N_CHARGED_PART;
*BNK_H_CHARGED_PART = *McnpToolsc::Ptrac_BNK_H_CHARGED_PART;
*BNK_N_TO_TABULAR = *McnpToolsc::Ptrac_BNK_N_TO_TABULAR;
*BNK_MODEL_UPDAT1 = *McnpToolsc::Ptrac_BNK_MODEL_UPDAT1;
*BNK_MODEL_UPDATE = *McnpToolsc::Ptrac_BNK_MODEL_UPDATE;
*BNK_DELAYED_NEUTRON = *McnpToolsc::Ptrac_BNK_DELAYED_NEUTRON;
*BNK_DELAYED_PHOTON = *McnpToolsc::Ptrac_BNK_DELAYED_PHOTON;
*BNK_DELAYED_BETA = *McnpToolsc::Ptrac_BNK_DELAYED_BETA;
*BNK_DELAYED_ALPHA = *McnpToolsc::Ptrac_BNK_DELAYED_ALPHA;
*BNK_DELAYED_POSITRN = *McnpToolsc::Ptrac_BNK_DELAYED_POSITRN;
*TER_ESCAPE = *McnpToolsc::Ptrac_TER_ESCAPE;
*TER_ENERGY_CUTOFF = *McnpToolsc::Ptrac_TER_ENERGY_CUTOFF;
*TER_TIME_CUTOFF = *McnpToolsc::Ptrac_TER_TIME_CUTOFF;
*TER_WEIGHT_WINDOW = *McnpToolsc::Ptrac_TER_WEIGHT_WINDOW;
*TER_CELL_IMPORTANCE = *McnpToolsc::Ptrac_TER_CELL_IMPORTANCE;
*TER_WEIGHT_CUTOFF = *McnpToolsc::Ptrac_TER_WEIGHT_CUTOFF;
*TER_ENERGY_IMPORTANCE = *McnpToolsc::Ptrac_TER_ENERGY_IMPORTANCE;
*TER_DXTRAN = *McnpToolsc::Ptrac_TER_DXTRAN;
*TER_FORCED_COLLISION = *McnpToolsc::Ptrac_TER_FORCED_COLLISION;
*TER_EXPONENTIAL_TRANSFORM = *McnpToolsc::Ptrac_TER_EXPONENTIAL_TRANSFORM;
*TER_N_DOWNSCATTERING = *McnpToolsc::Ptrac_TER_N_DOWNSCATTERING;
*TER_N_CAPTURE = *McnpToolsc::Ptrac_TER_N_CAPTURE;
*TER_N_N_XN = *McnpToolsc::Ptrac_TER_N_N_XN;
*TER_N_FISSION = *McnpToolsc::Ptrac_TER_N_FISSION;
*TER_N_NUCLEAR_INTERACTION = *McnpToolsc::Ptrac_TER_N_NUCLEAR_INTERACTION;
*TER_N_PARTICLE_DECAY = *McnpToolsc::Ptrac_TER_N_PARTICLE_DECAY;
*TER_N_TABULAR_BOUNDARY = *McnpToolsc::Ptrac_TER_N_TABULAR_BOUNDARY;
*TER_P_COMPTON_SCATTER = *McnpToolsc::Ptrac_TER_P_COMPTON_SCATTER;
*TER_P_CAPTURE = *McnpToolsc::Ptrac_TER_P_CAPTURE;
*TER_P_PAIR_PRODUCTION = *McnpToolsc::Ptrac_TER_P_PAIR_PRODUCTION;
*TER_P_PHOTONUCLEAR = *McnpToolsc::Ptrac_TER_P_PHOTONUCLEAR;
*TER_E_SCATTER = *McnpToolsc::Ptrac_TER_E_SCATTER;
*TER_E_BREMSSTRAHLUNG = *McnpToolsc::Ptrac_TER_E_BREMSSTRAHLUNG;
*TER_E_INTERACTION_DECAY = *McnpToolsc::Ptrac_TER_E_INTERACTION_DECAY;
*TER_GENNEUT_NUCLEAR_INTERACTION = *McnpToolsc::Ptrac_TER_GENNEUT_NUCLEAR_INTERACTION;
*TER_GENNEUT_ELASTIC_SCATTER = *McnpToolsc::Ptrac_TER_GENNEUT_ELASTIC_SCATTER;
*TER_GENNEUT_DECAY = *McnpToolsc::Ptrac_TER_GENNEUT_DECAY;
*TER_GENCHAR_MULTIPLE_SCATTER = *McnpToolsc::Ptrac_TER_GENCHAR_MULTIPLE_SCATTER;
*TER_GENCHAR_BREMSSTRAHLUNG = *McnpToolsc::Ptrac_TER_GENCHAR_BREMSSTRAHLUNG;
*TER_GENCHAR_NUCLEAR_INTERACTION = *McnpToolsc::Ptrac_TER_GENCHAR_NUCLEAR_INTERACTION;
*TER_GENCHAR_ELASTIC_SCATTER = *McnpToolsc::Ptrac_TER_GENCHAR_ELASTIC_SCATTER;
*TER_GENCHAR_DECAY = *McnpToolsc::Ptrac_TER_GENCHAR_DECAY;
*TER_GENCHAR_CAPTURE = *McnpToolsc::Ptrac_TER_GENCHAR_CAPTURE;
*TER_GENCHAR_TABULAR_SAMPLING = *McnpToolsc::Ptrac_TER_GENCHAR_TABULAR_SAMPLING;
*NPS = *McnpToolsc::Ptrac_NPS;
*FIRST_EVENT_TYPE = *McnpToolsc::Ptrac_FIRST_EVENT_TYPE;
*NPSCELL = *McnpToolsc::Ptrac_NPSCELL;
*NPSSURFACE = *McnpToolsc::Ptrac_NPSSURFACE;
*TALLY = *McnpToolsc::Ptrac_TALLY;
*VALUE = *McnpToolsc::Ptrac_VALUE;
*NEXT_EVENT_TYPE = *McnpToolsc::Ptrac_NEXT_EVENT_TYPE;
*NODE = *McnpToolsc::Ptrac_NODE;
*NSR = *McnpToolsc::Ptrac_NSR;
*ZAID = *McnpToolsc::Ptrac_ZAID;
*RXN = *McnpToolsc::Ptrac_RXN;
*SURFACE = *McnpToolsc::Ptrac_SURFACE;
*ANGLE = *McnpToolsc::Ptrac_ANGLE;
*TERMINATION_TYPE = *McnpToolsc::Ptrac_TERMINATION_TYPE;
*BRANCH = *McnpToolsc::Ptrac_BRANCH;
*PARTICLE = *McnpToolsc::Ptrac_PARTICLE;
*CELL = *McnpToolsc::Ptrac_CELL;
*MATERIAL = *McnpToolsc::Ptrac_MATERIAL;
*COLLISION_NUMBER = *McnpToolsc::Ptrac_COLLISION_NUMBER;
*X = *McnpToolsc::Ptrac_X;
*Y = *McnpToolsc::Ptrac_Y;
*Z = *McnpToolsc::Ptrac_Z;
*U = *McnpToolsc::Ptrac_U;
*V = *McnpToolsc::Ptrac_V;
*W = *McnpToolsc::Ptrac_W;
*ENERGY = *McnpToolsc::Ptrac_ENERGY;
*WEIGHT = *McnpToolsc::Ptrac_WEIGHT;
*TIME = *McnpToolsc::Ptrac_TIME;
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_Ptrac(@_);
    bless $self, $pkg if defined($self);
}

*ReadHistories = *McnpToolsc::Ptrac_ReadHistories;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_Ptrac($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : McnpTools::XSDir ##############

package McnpTools::XSDir;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( McnpTools );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = McnpToolsc::new_XSDir(@_);
    bless $self, $pkg if defined($self);
}

*Has = *McnpToolsc::XSDir_Has;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        McnpToolsc::delete_XSDir($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package McnpTools;

*MCNPTOOLS_MCTALKCODE_HPP = *McnpToolsc::MCNPTOOLS_MCTALKCODE_HPP;
*MCNPTOOLS_MCTALTALLY_HPP = *McnpToolsc::MCNPTOOLS_MCTALTALLY_HPP;
*MCNPTOOLS_MCTAL_HPP = *McnpToolsc::MCNPTOOLS_MCTAL_HPP;
*MCNPTOOLS_MESHTALTALLY_HPP = *McnpToolsc::MCNPTOOLS_MESHTALTALLY_HPP;
*MCNPTOOLS_MESHTAL_HPP = *McnpToolsc::MCNPTOOLS_MESHTAL_HPP;
*MCNPTOOLS_XSDIR_HPP = *McnpToolsc::MCNPTOOLS_XSDIR_HPP;
*MCNPTOOLS_MERGEMCTALS_HPP = *McnpToolsc::MCNPTOOLS_MERGEMCTALS_HPP;
1;
