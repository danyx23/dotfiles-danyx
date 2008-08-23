(setq perldoc-obarray (make-vector 1519 nil))
;; Functions
(mapc (lambda (func)
         (set (intern func perldoc-obarray) t))
'(
"-A" "-B" "-C" "-M" "-O" "-R" "-S" "-T" "-W" "-X" "-b" "-c" "-d" "-e" "-f"
"-g" "-k" "-l" "-o" "-p" "-r" "-s" "-t" "-u" "-w" "-x" "-z" "abs" "accept"
"alarm" "atan2" "bind" "binmode" "bless" "caller" "chdir" "chmod" "chomp"
"chop" "chown" "chr" "chroot" "close" "closedir" "connect" "continue" "cos"
"crypt" "dbmclose" "dbmopen" "defined" "delete" "die" "do" "dump" "each"
"endgrent" "endhostent" "endnetent" "endprotoent" "endpwent" "endservent"
"eof" "eval" "exec" "exists" "exit" "exp" "fcntl" "fileno" "flock" "fork"
"format" "formline" "getc" "getgrent" "getgrgid" "getgrnam" "gethostbyaddr"
"gethostbyname" "gethostent" "getlogin" "getnetbyaddr" "getnetbyname"
"getnetent" "getpeername" "getpgrp" "getppid" "getpriority"
"getprotobyname" "getprotobynumber" "getprotoent" "getpwent" "getpwnam"
"getpwuid" "getservbyname" "getservbyport" "getservent" "getsockname"
"getsockopt" "glob" "gmtime" "goto" "grep" "hex" "import" "index" "int"
"ioctl" "join" "keys" "kill" "last" "lc" "lcfirst" "length" "link" "listen"
"local" "localtime" "lock" "log" "lstat" "m" "map" "mkdir" "msgctl"
"msgget" "msgrcv" "msgsnd" "my" "next" "no" "oct" "open" "opendir" "ord"
"our" "pack" "package" "pipe" "pop" "pos" "print" "printf" "prototype"
"push" "q" "qq" "qr" "quotemeta" "qw" "qx" "rand" "read" "readdir"
"readline" "readlink" "readpipe" "recv" "redo" "ref" "rename" "require"
"reset" "return" "reverse" "rewinddir" "rindex" "rmdir" "s" "scalar" "seek"
"seekdir" "select" "semctl" "semget" "semop" "send" "setgrent" "sethostent"
"setnetent" "setpgrp" "setpriority" "setprotoent" "setpwent" "setservent"
"setsockopt" "shift" "shmctl" "shmget" "shmread" "shmwrite" "shutdown"
"sin" "sleep" "socket" "socketpair" "sort" "splice" "split" "sprintf"
"sqrt" "srand" "stat" "study" "sub" "substr" "symlink" "syscall" "sysopen"
"sysread" "sysseek" "system" "syswrite" "tell" "telldir" "tie" "tied"
"time" "times" "tr" "truncate" "uc" "ucfirst" "umask" "undef" "unlink"
"unpack" "unshift" "untie" "use" "utime" "values" "vec" "wait" "waitpid"
"wantarray" "warn" "write" "y"))

;; Modules
(mapc (lambda (mod)
         (intern mod perldoc-obarray))
'(
"._Sepia" "AcidRip::acidrip" "AcidRip::interface" "AcidRip::messages"
"AcidRip::signals" "AnyDBM_File" "AnyEvent" "AnyEvent::Impl::Coro"
"AnyEvent::Impl::Event" "AnyEvent::Impl::Glib" "AnyEvent::Impl::Tk"
"Apache::RPC::Server" "Apache::RPC::Status" "App::Prove"
"App::Prove::State" "Archive::Tar" "Archive::Tar::Constant"
"Archive::Tar::File" "Archive::Zip" "Archive::Zip::Archive"
"Archive::Zip::BufferedFileHandle" "Archive::Zip::DirectoryMember"
"Archive::Zip::FAQ" "Archive::Zip::FileMember" "Archive::Zip::Member"
"Archive::Zip::MemberRead" "Archive::Zip::MockFileHandle"
"Archive::Zip::NewFileMember" "Archive::Zip::StringMember"
"Archive::Zip::Tree" "Archive::Zip::ZipFileMember" "Attribute::Handlers"
"AutoLoader" "AutoSplit" "B" "B::Asmdata" "B::Assembler" "B::BUtils"
"B::Bblock" "B::Bytecode" "B::C" "B::CC" "B::Concise" "B::Debug"
"B::Deparse" "B::Disassembler" "B::Lint" "B::Module::Info" "B::Showlex"
"B::Stackobj" "B::Stash" "B::Terse" "B::Xref" "Benchmark" "Binfmt::Format"
"Binfmt::Lib" "Bundle::LWP" "ByteLoader" "CGI" "CGI::Apache" "CGI::Carp"
"CGI::Cookie" "CGI::Pretty" "CGI::Push" "CGI::Switch" "CGI::Util" "CPAN"
"CPAN::API::HOWTO" "CPAN::Admin" "CPAN::Debug" "CPAN::DeferedCode"
"CPAN::FirstTime" "CPAN::HandleConfig" "CPAN::Kwalify" "CPAN::Nox"
"CPAN::Queue" "CPAN::Tarzip" "CPAN::Version" "Cairo"
"Cairo::Install::Files" "Carp" "Carp::Heavy" "Class::ISA" "Class::Struct"
"Compress::Raw::Zlib" "Compress::Zlib" "Config" "Cwd" "DB" "DBM_Filter"
"DBM_Filter::compress" "DBM_Filter::encode" "DBM_Filter::int32"
"DBM_Filter::null" "DBM_Filter::utf8" "DB_File" "Data::Dumper"
"Date::Format" "Date::Language" "Date::Language::Afar"
"Date::Language::Amharic" "Date::Language::Austrian"
"Date::Language::Brazilian" "Date::Language::Chinese_GB"
"Date::Language::Czech" "Date::Language::Danish" "Date::Language::Dutch"
"Date::Language::English" "Date::Language::Finnish"
"Date::Language::French" "Date::Language::Gedeo" "Date::Language::German"
"Date::Language::Greek" "Date::Language::Italian"
"Date::Language::Norwegian" "Date::Language::Oromo"
"Date::Language::Sidama" "Date::Language::Somali" "Date::Language::Swedish"
"Date::Language::Tigrinya" "Date::Language::TigrinyaEritrean"
"Date::Language::TigrinyaEthiopian" "Date::Parse" "Debconf::AutoSelect"
"Debconf::Base" "Debconf::Client::ConfModule" "Debconf::ConfModule"
"Debconf::Config" "Debconf::Db" "Debconf::DbDriver"
"Debconf::DbDriver::Backup" "Debconf::DbDriver::Cache"
"Debconf::DbDriver::Copy" "Debconf::DbDriver::Debug"
"Debconf::DbDriver::DirTree" "Debconf::DbDriver::Directory"
"Debconf::DbDriver::File" "Debconf::DbDriver::LDAP"
"Debconf::DbDriver::PackageDir" "Debconf::DbDriver::Pipe"
"Debconf::DbDriver::Stack" "Debconf::Element"
"Debconf::Element::Dialog::Boolean" "Debconf::Element::Dialog::Error"
"Debconf::Element::Dialog::Multiselect" "Debconf::Element::Dialog::Note"
"Debconf::Element::Dialog::Password" "Debconf::Element::Dialog::Progress"
"Debconf::Element::Dialog::Select" "Debconf::Element::Dialog::String"
"Debconf::Element::Dialog::Text" "Debconf::Element::Editor::Boolean"
"Debconf::Element::Editor::Error" "Debconf::Element::Editor::Multiselect"
"Debconf::Element::Editor::Note" "Debconf::Element::Editor::Password"
"Debconf::Element::Editor::Progress" "Debconf::Element::Editor::Select"
"Debconf::Element::Editor::String" "Debconf::Element::Editor::Text"
"Debconf::Element::Gnome" "Debconf::Element::Gnome::Boolean"
"Debconf::Element::Gnome::Error" "Debconf::Element::Gnome::Multiselect"
"Debconf::Element::Gnome::Note" "Debconf::Element::Gnome::Password"
"Debconf::Element::Gnome::Progress" "Debconf::Element::Gnome::Select"
"Debconf::Element::Gnome::String" "Debconf::Element::Gnome::Text"
"Debconf::Element::Kde" "Debconf::Element::Kde::Boolean"
"Debconf::Element::Kde::Error" "Debconf::Element::Kde::Multiselect"
"Debconf::Element::Kde::Note" "Debconf::Element::Kde::Password"
"Debconf::Element::Kde::Progress" "Debconf::Element::Kde::Select"
"Debconf::Element::Kde::String" "Debconf::Element::Kde::Text"
"Debconf::Element::Multiselect" "Debconf::Element::Noninteractive"
"Debconf::Element::Noninteractive::Boolean"
"Debconf::Element::Noninteractive::Error"
"Debconf::Element::Noninteractive::Multiselect"
"Debconf::Element::Noninteractive::Note"
"Debconf::Element::Noninteractive::Password"
"Debconf::Element::Noninteractive::Progress"
"Debconf::Element::Noninteractive::Select"
"Debconf::Element::Noninteractive::String"
"Debconf::Element::Noninteractive::Text" "Debconf::Element::Select"
"Debconf::Element::Teletype::Boolean" "Debconf::Element::Teletype::Error"
"Debconf::Element::Teletype::Multiselect"
"Debconf::Element::Teletype::Note" "Debconf::Element::Teletype::Password"
"Debconf::Element::Teletype::Progress" "Debconf::Element::Teletype::Select"
"Debconf::Element::Teletype::String" "Debconf::Element::Teletype::Text"
"Debconf::Element::Web::Boolean" "Debconf::Element::Web::Error"
"Debconf::Element::Web::Multiselect" "Debconf::Element::Web::Note"
"Debconf::Element::Web::Password" "Debconf::Element::Web::Progress"
"Debconf::Element::Web::Select" "Debconf::Element::Web::String"
"Debconf::Element::Web::Text" "Debconf::Encoding" "Debconf::Format"
"Debconf::Format::822" "Debconf::FrontEnd" "Debconf::FrontEnd::Dialog"
"Debconf::FrontEnd::Editor" "Debconf::FrontEnd::Gnome"
"Debconf::FrontEnd::Kde" "Debconf::FrontEnd::Kde::Wizard"
"Debconf::FrontEnd::Kde::WizardUi" "Debconf::FrontEnd::Noninteractive"
"Debconf::FrontEnd::Passthrough" "Debconf::FrontEnd::Readline"
"Debconf::FrontEnd::ScreenSize" "Debconf::FrontEnd::Teletype"
"Debconf::FrontEnd::Text" "Debconf::FrontEnd::Web" "Debconf::Gettext"
"Debconf::Iterator" "Debconf::Log" "Debconf::Priority" "Debconf::Question"
"Debconf::Template" "Debconf::Template::Transient" "Debconf::TmpFile"
"Debian::AdduserCommon" "Debian::DebConf::Client::ConfModule"
"Debian::Defoma::Common" "Debian::Defoma::Font" "Debian::Defoma::FontCache"
"Debian::Defoma::Id" "Debian::Defoma::IdCache" "Debian::Defoma::Subst"
"Debian::Defoma::SubstCache" "Debian::Defoma::User"
"Debian::DictionariesCommon" "Debian::DocBase::Common"
"Debian::DocBase::DocBaseFile" "Debian::DocBase::Document"
"Debian::DocBase::InstallDocs" "Debian::DocBase::Programs::Dhelp"
"Debian::DocBase::Programs::Dwww" "Debian::DocBase::Programs::Scrollkeeper"
"Debian::DocBase::Utils" "DebianNet" "Devel::DProf" "Devel::PPPort"
"Devel::Peek" "Devel::SelfStubber" "Digest" "Digest::MD5" "Digest::SHA"
"Digest::SHA1" "Digest::base" "Digest::file" "DirHandle" "Dpkg"
"Dpkg::Arch" "Dpkg::BuildOptions" "Dpkg::Cdata" "Dpkg::Changelog"
"Dpkg::Changelog::Debian" "Dpkg::Compression" "Dpkg::Control" "Dpkg::Deps"
"Dpkg::ErrorHandling" "Dpkg::Fields" "Dpkg::Gettext" "Dpkg::Path"
"Dpkg::Shlibs" "Dpkg::Shlibs::Objdump" "Dpkg::Shlibs::SymbolFile"
"Dpkg::Substvars" "Dpkg::Vars" "Dpkg::Version" "Dumpvalue" "DynaLoader"
"Emacs::PDE" "Emacs::PDE::Util" "Encode" "Encode::Alias" "Encode::Byte"
"Encode::CJKConstants" "Encode::CN" "Encode::CN::HZ" "Encode::Config"
"Encode::EBCDIC" "Encode::Encoder" "Encode::Encoding" "Encode::Guess"
"Encode::JP" "Encode::JP::H2Z" "Encode::JP::JIS7" "Encode::KR"
"Encode::KR::2022_KR" "Encode::MIME::Header"
"Encode::MIME::Header::ISO_2022_JP" "Encode::PerlIO" "Encode::Supported"
"Encode::Symbol" "Encode::TW" "Encode::Unicode" "Encode::Unicode::UTF7"
"English" "Env" "Errno" "Error" "Error::Simple" "Event" "Event::ExecFlow"
"Event::ExecFlow::Callbacks" "Event::ExecFlow::Frontend"
"Event::ExecFlow::Frontend::Term" "Event::ExecFlow::Job"
"Event::ExecFlow::Job::Code" "Event::ExecFlow::Job::Command"
"Event::ExecFlow::Job::Group" "Event::ExecFlow::Scheduler"
"Event::ExecFlow::Scheduler::SimpleMax" "Event::MakeMaker" "Event::RPC"
"Event::RPC::AuthPasswdHash" "Event::RPC::Client" "Event::RPC::Connection"
"Event::RPC::LogConnection" "Event::RPC::Logger" "Event::RPC::Loop"
"Event::RPC::Loop::Event" "Event::RPC::Loop::Glib" "Event::RPC::Message"
"Event::RPC::Server" "Event::Watcher" "Event::generic" "Event::group"
"Event::idle" "Event::io" "Event::signal" "Event::timer" "Event::type"
"Event::var" "Exporter" "Exporter::Heavy" "ExtUtils::CBuilder"
"ExtUtils::CBuilder::Base" "ExtUtils::CBuilder::Platform::Unix"
"ExtUtils::CBuilder::Platform::VMS" "ExtUtils::CBuilder::Platform::Windows"
"ExtUtils::CBuilder::Platform::aix" "ExtUtils::CBuilder::Platform::cygwin"
"ExtUtils::CBuilder::Platform::darwin"
"ExtUtils::CBuilder::Platform::dec_osf" "ExtUtils::CBuilder::Platform::os2"
"ExtUtils::Command" "ExtUtils::Command::MM" "ExtUtils::Constant"
"ExtUtils::Constant::Base" "ExtUtils::Constant::Utils"
"ExtUtils::Constant::XS" "ExtUtils::Embed" "ExtUtils::Install"
"ExtUtils::Installed" "ExtUtils::Liblist" "ExtUtils::Liblist::Kid"
"ExtUtils::MM" "ExtUtils::MM_AIX" "ExtUtils::MM_Any" "ExtUtils::MM_BeOS"
"ExtUtils::MM_Cygwin" "ExtUtils::MM_DOS" "ExtUtils::MM_Darwin"
"ExtUtils::MM_MacOS" "ExtUtils::MM_NW5" "ExtUtils::MM_OS2"
"ExtUtils::MM_QNX" "ExtUtils::MM_UWIN" "ExtUtils::MM_Unix"
"ExtUtils::MM_VMS" "ExtUtils::MM_VOS" "ExtUtils::MM_Win32"
"ExtUtils::MM_Win95" "ExtUtils::MY" "ExtUtils::MakeMaker"
"ExtUtils::MakeMaker::Config" "ExtUtils::MakeMaker::FAQ"
"ExtUtils::MakeMaker::Tutorial" "ExtUtils::MakeMaker::bytes"
"ExtUtils::MakeMaker::vmsish" "ExtUtils::Manifest" "ExtUtils::Miniperl"
"ExtUtils::Mkbootstrap" "ExtUtils::Mksymlists" "ExtUtils::Packlist"
"ExtUtils::testlib" "Fatal" "Fcntl" "File::._Temp" "File::Basename"
"File::CheckTree" "File::Compare" "File::Copy" "File::DosGlob" "File::Find"
"File::Glob" "File::GlobMapper" "File::HomeDir" "File::HomeDir::Darwin"
"File::HomeDir::Driver" "File::HomeDir::MacOS9" "File::HomeDir::Unix"
"File::HomeDir::Windows" "File::Listing" "File::Path" "File::Spec"
"File::Spec::Cygwin" "File::Spec::Epoc" "File::Spec::Functions"
"File::Spec::Mac" "File::Spec::OS2" "File::Spec::Unix" "File::Spec::VMS"
"File::Spec::Win32" "File::Temp" "File::Which" "File::stat" "FileCache"
"FileHandle" "Filter::Simple" "Filter::Util::Call" "FindBin" "Foomatic::DB"
"Foomatic::Defaults" "Foomatic::PPD" "Foomatic::UIElem" "GDBM_File"
"Getopt::Long" "Getopt::Std" "Git" "Glib" "Glib::BookmarkFile"
"Glib::Boxed" "Glib::CodeGen" "Glib::Error" "Glib::Flags" "Glib::GenPod"
"Glib::Install::Files" "Glib::KeyFile" "Glib::Log" "Glib::MainLoop"
"Glib::MakeHelper" "Glib::Markup" "Glib::Object" "Glib::Object::Subclass"
"Glib::Param::Boolean" "Glib::Param::Double" "Glib::Param::Enum"
"Glib::Param::Flags" "Glib::Param::Int" "Glib::Param::Int64"
"Glib::Param::String" "Glib::Param::UInt" "Glib::Param::UInt64"
"Glib::Param::Unichar" "Glib::ParamSpec" "Glib::ParseXSDoc" "Glib::Signal"
"Glib::Type" "Glib::Utils" "Glib::devel" "Glib::index" "Glib::version"
"Glib::xsapi" "Gnome2" "Gnome2::About" "Gnome2::App" "Gnome2::AppBar"
"Gnome2::AppHelper" "Gnome2::AuthenticationManager" "Gnome2::Bonobo"
"Gnome2::Bonobo::Dock" "Gnome2::Bonobo::DockItem" "Gnome2::Canvas"
"Gnome2::Canvas::Bpath" "Gnome2::Canvas::Ellipse" "Gnome2::Canvas::Group"
"Gnome2::Canvas::Install::Files" "Gnome2::Canvas::Item"
"Gnome2::Canvas::Line" "Gnome2::Canvas::PathDef" "Gnome2::Canvas::Pixbuf"
"Gnome2::Canvas::RE" "Gnome2::Canvas::Rect" "Gnome2::Canvas::RichText"
"Gnome2::Canvas::Shape" "Gnome2::Canvas::Text" "Gnome2::Canvas::Widget"
"Gnome2::Canvas::index" "Gnome2::Canvas::version" "Gnome2::Client"
"Gnome2::ColorPicker" "Gnome2::Config" "Gnome2::Config::Iterator"
"Gnome2::DateEdit" "Gnome2::Druid" "Gnome2::DruidPage"
"Gnome2::DruidPageEdge" "Gnome2::DruidPageStandard" "Gnome2::Entry"
"Gnome2::FileEntry" "Gnome2::FontPicker" "Gnome2::HRef" "Gnome2::Help"
"Gnome2::I18N" "Gnome2::IconEntry" "Gnome2::IconList"
"Gnome2::IconSelection" "Gnome2::IconTextItem" "Gnome2::IconTheme"
"Gnome2::Install::Files" "Gnome2::ModuleInfo" "Gnome2::PasswordDialog"
"Gnome2::PixmapEntry" "Gnome2::PopupMenu" "Gnome2::Program" "Gnome2::Score"
"Gnome2::Scores" "Gnome2::Sound" "Gnome2::Thumbnail"
"Gnome2::ThumbnailFactory" "Gnome2::UIDefs" "Gnome2::URL" "Gnome2::Util"
"Gnome2::VFS" "Gnome2::VFS::Address" "Gnome2::VFS::Application"
"Gnome2::VFS::ApplicationRegistry" "Gnome2::VFS::Async"
"Gnome2::VFS::Async::Handle" "Gnome2::VFS::DNSSD"
"Gnome2::VFS::DNSSD::Browse::Handle" "Gnome2::VFS::DNSSD::Resolve::Handle"
"Gnome2::VFS::Directory" "Gnome2::VFS::Directory::Handle"
"Gnome2::VFS::Drive" "Gnome2::VFS::FileInfo" "Gnome2::VFS::Handle"
"Gnome2::VFS::Install::Files" "Gnome2::VFS::Mime"
"Gnome2::VFS::Mime::Application" "Gnome2::VFS::Mime::Monitor"
"Gnome2::VFS::Mime::Type" "Gnome2::VFS::Monitor"
"Gnome2::VFS::Monitor::Handle" "Gnome2::VFS::Resolve"
"Gnome2::VFS::Resolve::Handle" "Gnome2::VFS::URI" "Gnome2::VFS::Volume"
"Gnome2::VFS::VolumeMonitor" "Gnome2::VFS::Xfer" "Gnome2::VFS::index"
"Gnome2::VFS::main" "Gnome2::Window" "Gnome2::WindowIcon" "Gnome2::enums"
"Gnome2::index" "Gnome2::main" "Gtk2" "Gtk2::CodeGen"
"Gtk2::Ex::FormFactory" "Gtk2::Ex::FormFactory::Button"
"Gtk2::Ex::FormFactory::CheckButton"
"Gtk2::Ex::FormFactory::CheckButtonGroup" "Gtk2::Ex::FormFactory::Combo"
"Gtk2::Ex::FormFactory::Container" "Gtk2::Ex::FormFactory::Context"
"Gtk2::Ex::FormFactory::DialogButtons" "Gtk2::Ex::FormFactory::Entry"
"Gtk2::Ex::FormFactory::ExecFlow" "Gtk2::Ex::FormFactory::Expander"
"Gtk2::Ex::FormFactory::Form" "Gtk2::Ex::FormFactory::GtkWidget"
"Gtk2::Ex::FormFactory::HBox" "Gtk2::Ex::FormFactory::HSeparator"
"Gtk2::Ex::FormFactory::Image" "Gtk2::Ex::FormFactory::Intro"
"Gtk2::Ex::FormFactory::Label" "Gtk2::Ex::FormFactory::Layout"
"Gtk2::Ex::FormFactory::List" "Gtk2::Ex::FormFactory::Loader"
"Gtk2::Ex::FormFactory::Menu" "Gtk2::Ex::FormFactory::Notebook"
"Gtk2::Ex::FormFactory::Popup" "Gtk2::Ex::FormFactory::ProgressBar"
"Gtk2::Ex::FormFactory::Proxy" "Gtk2::Ex::FormFactory::ProxyBuffered"
"Gtk2::Ex::FormFactory::RadioButton" "Gtk2::Ex::FormFactory::Rules"
"Gtk2::Ex::FormFactory::Table" "Gtk2::Ex::FormFactory::TextView"
"Gtk2::Ex::FormFactory::Timestamp" "Gtk2::Ex::FormFactory::ToggleButton"
"Gtk2::Ex::FormFactory::VBox" "Gtk2::Ex::FormFactory::VPaned"
"Gtk2::Ex::FormFactory::VSeparator" "Gtk2::Ex::FormFactory::Widget"
"Gtk2::Ex::FormFactory::Window" "Gtk2::Ex::FormFactory::YesNo"
"Gtk2::Gdk::Keysyms" "Gtk2::Helper" "Gtk2::Install::Files" "Gtk2::Pango"
"Gtk2::SimpleList" "Gtk2::SimpleMenu" "Gtk2::TestHelper" "HTML::AsSubs"
"HTML::Element" "HTML::Element::traverse" "HTML::Entities" "HTML::Filter"
"HTML::Form" "HTML::HeadParser" "HTML::LinkExtor" "HTML::Parse"
"HTML::Parser" "HTML::PullParser" "HTML::Tagset" "HTML::TokeParser"
"HTML::Tree" "HTML::Tree::AboutObjects" "HTML::Tree::AboutTrees"
"HTML::Tree::Scanning" "HTML::TreeBuilder" "HTTP::Cookies"
"HTTP::Cookies::Microsoft" "HTTP::Cookies::Netscape" "HTTP::Daemon"
"HTTP::Date" "HTTP::Headers" "HTTP::Headers::Auth" "HTTP::Headers::ETag"
"HTTP::Headers::Util" "HTTP::Message" "HTTP::Negotiate" "HTTP::Request"
"HTTP::Request::Common" "HTTP::Response" "HTTP::Status" "Hash::Util"
"I18N::Collate" "I18N::LangTags" "I18N::LangTags::Detect"
"I18N::LangTags::List" "I18N::Langinfo" "IO"
"IO::Compress::Adapter::Deflate" "IO::Compress::Adapter::Identity"
"IO::Compress::Base" "IO::Compress::Base::Common" "IO::Compress::Deflate"
"IO::Compress::Gzip" "IO::Compress::Gzip::Constants"
"IO::Compress::RawDeflate" "IO::Compress::Zip"
"IO::Compress::Zip::Constants" "IO::Compress::Zlib::Constants"
"IO::Compress::Zlib::Extra" "IO::Dir" "IO::File" "IO::Handle" "IO::Pipe"
"IO::Poll" "IO::Seekable" "IO::Select" "IO::Socket" "IO::Socket::INET"
"IO::Socket::UNIX" "IO::Uncompress::Adapter::Identity"
"IO::Uncompress::Adapter::Inflate" "IO::Uncompress::AnyInflate"
"IO::Uncompress::AnyUncompress" "IO::Uncompress::Base"
"IO::Uncompress::Gunzip" "IO::Uncompress::Inflate"
"IO::Uncompress::RawInflate" "IO::Uncompress::Unzip" "IO::Zlib" "IPC::Msg"
"IPC::Open2" "IPC::Open3" "IPC::Semaphore" "IPC::SysV" "Image::Magick"
"Immunix::Severity" "Immunix::SubDomain" "LWP" "LWP::Authen::Basic"
"LWP::Authen::Digest" "LWP::Authen::Ntlm" "LWP::ConnCache" "LWP::Debug"
"LWP::DebugFile" "LWP::MediaTypes" "LWP::MemberMixin" "LWP::Protocol"
"LWP::Protocol::GHTTP" "LWP::Protocol::cpan" "LWP::Protocol::data"
"LWP::Protocol::file" "LWP::Protocol::ftp" "LWP::Protocol::gopher"
"LWP::Protocol::http" "LWP::Protocol::http10" "LWP::Protocol::https"
"LWP::Protocol::https10" "LWP::Protocol::loopback" "LWP::Protocol::mailto"
"LWP::Protocol::nntp" "LWP::Protocol::nogo" "LWP::RobotUA" "LWP::Simple"
"LWP::UserAgent" "List::Util" "Locale::Constants" "Locale::Country"
"Locale::Currency" "Locale::Language" "Locale::Maketext"
"Locale::Maketext::Guts" "Locale::Maketext::GutsLoader"
"Locale::Maketext::TPJ13" "Locale::Messages" "Locale::Recode"
"Locale::Recode::_Aliases" "Locale::Recode::_Conversions"
"Locale::RecodeData" "Locale::RecodeData::ASMO_449"
"Locale::RecodeData::ATARI_ST" "Locale::RecodeData::ATARI_ST_EURO"
"Locale::RecodeData::CP10007" "Locale::RecodeData::CP1250"
"Locale::RecodeData::CP1251" "Locale::RecodeData::CP1252"
"Locale::RecodeData::CP1253" "Locale::RecodeData::CP1254"
"Locale::RecodeData::CP1256" "Locale::RecodeData::CP1257"
"Locale::RecodeData::CSN_369103" "Locale::RecodeData::CWI"
"Locale::RecodeData::DEC_MCS" "Locale::RecodeData::EBCDIC_AT_DE"
"Locale::RecodeData::EBCDIC_AT_DE_A" "Locale::RecodeData::EBCDIC_CA_FR"
"Locale::RecodeData::EBCDIC_DK_NO" "Locale::RecodeData::EBCDIC_DK_NO_A"
"Locale::RecodeData::EBCDIC_ES" "Locale::RecodeData::EBCDIC_ES_A"
"Locale::RecodeData::EBCDIC_ES_S" "Locale::RecodeData::EBCDIC_FI_SE"
"Locale::RecodeData::EBCDIC_FI_SE_A" "Locale::RecodeData::EBCDIC_FR"
"Locale::RecodeData::EBCDIC_IS_FRISS" "Locale::RecodeData::EBCDIC_IT"
"Locale::RecodeData::EBCDIC_PT" "Locale::RecodeData::EBCDIC_UK"
"Locale::RecodeData::EBCDIC_US" "Locale::RecodeData::ECMA_CYRILLIC"
"Locale::RecodeData::GEORGIAN_ACADEMY" "Locale::RecodeData::GEORGIAN_PS"
"Locale::RecodeData::GOST_19768_74" "Locale::RecodeData::GREEK7"
"Locale::RecodeData::GREEK7_OLD" "Locale::RecodeData::GREEK_CCITT"
"Locale::RecodeData::HP_ROMAN8" "Locale::RecodeData::IBM037"
"Locale::RecodeData::IBM038" "Locale::RecodeData::IBM1004"
"Locale::RecodeData::IBM1026" "Locale::RecodeData::IBM1047"
"Locale::RecodeData::IBM256" "Locale::RecodeData::IBM273"
"Locale::RecodeData::IBM274" "Locale::RecodeData::IBM275"
"Locale::RecodeData::IBM277" "Locale::RecodeData::IBM278"
"Locale::RecodeData::IBM280" "Locale::RecodeData::IBM281"
"Locale::RecodeData::IBM284" "Locale::RecodeData::IBM285"
"Locale::RecodeData::IBM290" "Locale::RecodeData::IBM297"
"Locale::RecodeData::IBM420" "Locale::RecodeData::IBM423"
"Locale::RecodeData::IBM424" "Locale::RecodeData::IBM437"
"Locale::RecodeData::IBM500" "Locale::RecodeData::IBM850"
"Locale::RecodeData::IBM851" "Locale::RecodeData::IBM852"
"Locale::RecodeData::IBM855" "Locale::RecodeData::IBM857"
"Locale::RecodeData::IBM860" "Locale::RecodeData::IBM861"
"Locale::RecodeData::IBM862" "Locale::RecodeData::IBM863"
"Locale::RecodeData::IBM864" "Locale::RecodeData::IBM865"
"Locale::RecodeData::IBM866" "Locale::RecodeData::IBM868"
"Locale::RecodeData::IBM869" "Locale::RecodeData::IBM870"
"Locale::RecodeData::IBM871" "Locale::RecodeData::IBM874"
"Locale::RecodeData::IBM875" "Locale::RecodeData::IBM880"
"Locale::RecodeData::IBM891" "Locale::RecodeData::IBM903"
"Locale::RecodeData::IBM904" "Locale::RecodeData::IBM905"
"Locale::RecodeData::IBM918" "Locale::RecodeData::IEC_P27_1"
"Locale::RecodeData::INIS" "Locale::RecodeData::INIS_8"
"Locale::RecodeData::INIS_CYRILLIC" "Locale::RecodeData::ISO_10367_BOX"
"Locale::RecodeData::ISO_2033_1983" "Locale::RecodeData::ISO_5427"
"Locale::RecodeData::ISO_5427_EXT" "Locale::RecodeData::ISO_5428"
"Locale::RecodeData::ISO_8859_1" "Locale::RecodeData::ISO_8859_10"
"Locale::RecodeData::ISO_8859_11" "Locale::RecodeData::ISO_8859_13"
"Locale::RecodeData::ISO_8859_14" "Locale::RecodeData::ISO_8859_15"
"Locale::RecodeData::ISO_8859_16" "Locale::RecodeData::ISO_8859_2"
"Locale::RecodeData::ISO_8859_3" "Locale::RecodeData::ISO_8859_4"
"Locale::RecodeData::ISO_8859_5" "Locale::RecodeData::ISO_8859_6"
"Locale::RecodeData::ISO_8859_7" "Locale::RecodeData::ISO_8859_8"
"Locale::RecodeData::ISO_8859_9" "Locale::RecodeData::KOI8_R"
"Locale::RecodeData::KOI8_RU" "Locale::RecodeData::KOI8_T"
"Locale::RecodeData::KOI8_U" "Locale::RecodeData::KOI_8"
"Locale::RecodeData::LATIN_GREEK" "Locale::RecodeData::LATIN_GREEK_1"
"Locale::RecodeData::MACARABIC" "Locale::RecodeData::MACCROATIAN"
"Locale::RecodeData::MACCYRILLIC" "Locale::RecodeData::MACGREEK"
"Locale::RecodeData::MACHEBREW" "Locale::RecodeData::MACICELAND"
"Locale::RecodeData::MACINTOSH" "Locale::RecodeData::MACROMANIA"
"Locale::RecodeData::MACTHAI" "Locale::RecodeData::MACTURKISH"
"Locale::RecodeData::MACUKRAINE" "Locale::RecodeData::MAC_IS"
"Locale::RecodeData::MAC_SAMI" "Locale::RecodeData::MAC_UK"
"Locale::RecodeData::NATS_DANO" "Locale::RecodeData::NATS_SEFI"
"Locale::RecodeData::NEXTSTEP" "Locale::RecodeData::SAMI_WS2"
"Locale::RecodeData::TIS_620" "Locale::RecodeData::US_ASCII"
"Locale::RecodeData::UTF_8" "Locale::RecodeData::VISCII"
"Locale::RecodeData::_Encode" "Locale::Script" "Locale::TextDomain"
"Locale::gettext" "Locale::gettext_pp" "Log::Log4perl"
"Log::Log4perl::Appender" "Log::Log4perl::Appender::Buffer"
"Log::Log4perl::Appender::DBI" "Log::Log4perl::Appender::File"
"Log::Log4perl::Appender::Limit" "Log::Log4perl::Appender::RRDs"
"Log::Log4perl::Appender::Screen"
"Log::Log4perl::Appender::ScreenColoredLevels"
"Log::Log4perl::Appender::Socket" "Log::Log4perl::Appender::String"
"Log::Log4perl::Appender::Synchronized"
"Log::Log4perl::Appender::TestArrayBuffer"
"Log::Log4perl::Appender::TestBuffer"
"Log::Log4perl::Appender::TestFileCreeper" "Log::Log4perl::Config"
"Log::Log4perl::Config::BaseConfigurator"
"Log::Log4perl::Config::DOMConfigurator"
"Log::Log4perl::Config::PropertyConfigurator"
"Log::Log4perl::Config::Watch" "Log::Log4perl::DateFormat"
"Log::Log4perl::FAQ" "Log::Log4perl::Filter"
"Log::Log4perl::Filter::Boolean" "Log::Log4perl::Filter::LevelMatch"
"Log::Log4perl::Filter::LevelRange" "Log::Log4perl::Filter::StringMatch"
"Log::Log4perl::JavaMap" "Log::Log4perl::JavaMap::ConsoleAppender"
"Log::Log4perl::JavaMap::FileAppender"
"Log::Log4perl::JavaMap::JDBCAppender"
"Log::Log4perl::JavaMap::NTEventLogAppender"
"Log::Log4perl::JavaMap::RollingFileAppender"
"Log::Log4perl::JavaMap::SyslogAppender"
"Log::Log4perl::JavaMap::TestBuffer" "Log::Log4perl::Layout"
"Log::Log4perl::Layout::NoopLayout" "Log::Log4perl::Layout::PatternLayout"
"Log::Log4perl::Layout::PatternLayout::Multiline"
"Log::Log4perl::Layout::SimpleLayout" "Log::Log4perl::Level"
"Log::Log4perl::Logger" "Log::Log4perl::MDC" "Log::Log4perl::NDC"
"Log::Log4perl::Resurrector" "Log::Log4perl::Util"
"Log::Log4perl::Util::Semaphore" "MIME::Base64" "MIME::QuotedPrint"
"Math::BigFloat" "Math::BigFloat::Trace" "Math::BigInt"
"Math::BigInt::Calc" "Math::BigInt::CalcEmu" "Math::BigInt::Trace"
"Math::BigRat" "Math::Complex" "Math::Trig" "Memoize"
"Memoize::AnyDBM_File" "Memoize::Expire" "Memoize::ExpireFile"
"Memoize::ExpireTest" "Memoize::NDBM_File" "Memoize::SDBM_File"
"Memoize::Storable" "Module::Build" "Module::Build::API"
"Module::Build::Authoring" "Module::Build::Base" "Module::Build::Compat"
"Module::Build::Config" "Module::Build::ConfigData"
"Module::Build::Cookbook" "Module::Build::ModuleInfo"
"Module::Build::Notes" "Module::Build::PPMMaker"
"Module::Build::Platform::Amiga" "Module::Build::Platform::Default"
"Module::Build::Platform::EBCDIC" "Module::Build::Platform::MPEiX"
"Module::Build::Platform::MacOS" "Module::Build::Platform::RiscOS"
"Module::Build::Platform::Unix" "Module::Build::Platform::VMS"
"Module::Build::Platform::VOS" "Module::Build::Platform::Windows"
"Module::Build::Platform::aix" "Module::Build::Platform::cygwin"
"Module::Build::Platform::darwin" "Module::Build::Platform::os2"
"Module::Build::PodParser" "Module::Build::Version" "Module::Build::YAML"
"Module::Info" "NDBM_File" "NEXT" "Net::Cmd" "Net::Config" "Net::DBus"
"Net::DBus::ASyncReply" "Net::DBus::Annotation" "Net::DBus::Binding::Bus"
"Net::DBus::Binding::Connection" "Net::DBus::Binding::Introspector"
"Net::DBus::Binding::Iterator" "Net::DBus::Binding::Message"
"Net::DBus::Binding::Message::Error"
"Net::DBus::Binding::Message::MethodCall"
"Net::DBus::Binding::Message::MethodReturn"
"Net::DBus::Binding::Message::Signal" "Net::DBus::Binding::PendingCall"
"Net::DBus::Binding::Server" "Net::DBus::Binding::Value"
"Net::DBus::Binding::Watch" "Net::DBus::Callback" "Net::DBus::Dumper"
"Net::DBus::Error" "Net::DBus::Exporter" "Net::DBus::Object"
"Net::DBus::Reactor" "Net::DBus::RemoteObject" "Net::DBus::RemoteService"
"Net::DBus::Service" "Net::DBus::Test::MockConnection"
"Net::DBus::Test::MockIterator" "Net::DBus::Test::MockMessage"
"Net::DBus::Test::MockObject" "Net::DBus::Tutorial"
"Net::DBus::Tutorial::ExportingObjects" "Net::DBus::Tutorial::UsingObjects"
"Net::Domain" "Net::FTP" "Net::FTP::A" "Net::FTP::E" "Net::FTP::I"
"Net::FTP::L" "Net::FTP::dataconn" "Net::HTTP" "Net::HTTP::Methods"
"Net::HTTP::NB" "Net::HTTPS" "Net::NNTP" "Net::Netrc" "Net::POP3"
"Net::Ping" "Net::SMTP" "Net::Time" "Net::hostent" "Net::libnetFAQ"
"Net::netent" "Net::protoent" "Net::servent" "O" "ODBM_File" "Opcode"
"POSIX" "PadWalker" "Perl::Tidy" "PerlIO" "PerlIO::encoding"
"PerlIO::scalar" "PerlIO::via" "PerlIO::via::QuotedPrint" "Perldoc::Search"
"Pidgin" "Pod::Checker" "Pod::Escapes" "Pod::Find" "Pod::Functions"
"Pod::Html" "Pod::InputObjects" "Pod::LaTeX" "Pod::Man" "Pod::ParseLink"
"Pod::ParseUtils" "Pod::Parser" "Pod::Perldoc" "Pod::Perldoc::BaseTo"
"Pod::Perldoc::GetOptsOO" "Pod::Perldoc::ToChecker" "Pod::Perldoc::ToMan"
"Pod::Perldoc::ToNroff" "Pod::Perldoc::ToPod" "Pod::Perldoc::ToRtf"
"Pod::Perldoc::ToText" "Pod::Perldoc::ToTk" "Pod::Perldoc::ToXml"
"Pod::PlainText" "Pod::Plainer" "Pod::Select" "Pod::Simple"
"Pod::Simple::BlackBox" "Pod::Simple::Checker" "Pod::Simple::Debug"
"Pod::Simple::DumpAsText" "Pod::Simple::DumpAsXML" "Pod::Simple::HTML"
"Pod::Simple::HTMLBatch" "Pod::Simple::HTMLLegacy"
"Pod::Simple::LinkSection" "Pod::Simple::Methody" "Pod::Simple::Progress"
"Pod::Simple::PullParser" "Pod::Simple::PullParserEndToken"
"Pod::Simple::PullParserStartToken" "Pod::Simple::PullParserTextToken"
"Pod::Simple::PullParserToken" "Pod::Simple::RTF" "Pod::Simple::Search"
"Pod::Simple::SimpleTree" "Pod::Simple::Subclassing" "Pod::Simple::Text"
"Pod::Simple::TextContent" "Pod::Simple::TiedOutFH"
"Pod::Simple::Transcode" "Pod::Simple::TranscodeDumb"
"Pod::Simple::TranscodeSmart" "Pod::Simple::XMLOutStream" "Pod::Text"
"Pod::Text::Color" "Pod::Text::Overstrike" "Pod::Text::Termcap"
"Pod::Usage" "Purple" "RPC::XML" "RPC::XML::Client" "RPC::XML::Function"
"RPC::XML::Method" "RPC::XML::Parser" "RPC::XML::Procedure"
"RPC::XML::Server" "Ratpoison" "SDBM_File" "SVN::Base" "SVN::Client"
"SVN::Core" "SVN::Delta" "SVN::Fs" "SVN::Ra" "SVN::Repos" "SVN::Wc"
"SWISH::API" "SWISH::API::Common" "Safe" "Scalar::Util" "Search::Dict"
"SelectSaver" "SelfLoader" "Sepia" "Sepia::Debug" "Sepia::Xref" "Shell"
"Shell::POSIX::Select" "Socket" "Storable" "Sub::Uplevel" "Switch" "Symbol"
"Sys::Hostname" "Sys::Syslog" "Sysadm::Install" "TAP::Base"
"TAP::Formatter::Color" "TAP::Formatter::Console"
"TAP::Formatter::Console::ParallelSession"
"TAP::Formatter::Console::Session" "TAP::Harness" "TAP::Object"
"TAP::Parser" "TAP::Parser::Aggregator" "TAP::Parser::Grammar"
"TAP::Parser::Iterator" "TAP::Parser::Iterator::Array"
"TAP::Parser::Iterator::Process" "TAP::Parser::Iterator::Stream"
"TAP::Parser::IteratorFactory" "TAP::Parser::Multiplexer"
"TAP::Parser::Result" "TAP::Parser::Result::Bailout"
"TAP::Parser::Result::Comment" "TAP::Parser::Result::Plan"
"TAP::Parser::Result::Pragma" "TAP::Parser::Result::Test"
"TAP::Parser::Result::Unknown" "TAP::Parser::Result::Version"
"TAP::Parser::Result::YAML" "TAP::Parser::ResultFactory"
"TAP::Parser::Scheduler" "TAP::Parser::Scheduler::Job"
"TAP::Parser::Scheduler::Spinner" "TAP::Parser::Source"
"TAP::Parser::Source::Perl" "TAP::Parser::Utils"
"TAP::Parser::YAMLish::Reader" "TAP::Parser::YAMLish::Writer"
"Term::ANSIColor" "Term::Cap" "Term::Complete" "Term::ReadKey"
"Term::ReadLine" "Term::ReadLine::Perl" "Term::ReadLine::readline" "Test"
"Test::Builder" "Test::Builder::Module" "Test::Builder::Tester"
"Test::Builder::Tester::Color" "Test::HACKING" "Test::Harness"
"Test::Harness::Assert" "Test::Harness::Iterator" "Test::Harness::Point"
"Test::Harness::Straps" "Test::Harness::TAP" "Test::More" "Test::Simple"
"Test::Tutorial" "Test::YAML" "Text::Abbrev" "Text::Balanced"
"Text::CharWidth" "Text::Glob" "Text::Iconv" "Text::ParseWords"
"Text::Soundex" "Text::Tabs" "Text::Wrap" "Text::WrapI18N" "Thread"
"Thread::Queue" "Thread::Semaphore" "Tie::Array" "Tie::File" "Tie::Handle"
"Tie::Hash" "Tie::Memoize" "Tie::RefHash" "Tie::Scalar" "Tie::SubstrHash"
"Time::HiRes" "Time::Local" "Time::Zone" "Time::gmtime" "Time::localtime"
"Time::tm" "UNIVERSAL" "URI" "URI::Escape" "URI::Heuristic"
"URI::QueryParam" "URI::Split" "URI::URL" "URI::WithBase" "URI::_foreign"
"URI::_generic" "URI::_ldap" "URI::_login" "URI::_query" "URI::_segment"
"URI::_server" "URI::_userpass" "URI::data" "URI::file" "URI::file::Base"
"URI::file::FAT" "URI::file::Mac" "URI::file::OS2" "URI::file::QNX"
"URI::file::Unix" "URI::file::Win32" "URI::ftp" "URI::gopher" "URI::http"
"URI::https" "URI::ldap" "URI::ldapi" "URI::ldaps" "URI::mailto" "URI::mms"
"URI::news" "URI::nntp" "URI::pop" "URI::rlogin" "URI::rsync" "URI::rtsp"
"URI::rtspu" "URI::sip" "URI::sips" "URI::snews" "URI::ssh" "URI::telnet"
"URI::tn3270" "URI::urn" "URI::urn::isbn" "URI::urn::oid"
"Unicode::Collate" "Unicode::Normalize" "Unicode::UCD" "User::grent"
"User::pwent" "Video::DVDRip" "Video::DVDRip::Audio" "Video::DVDRip::Base"
"Video::DVDRip::BitrateCalc" "Video::DVDRip::CPAN::Scanf"
"Video::DVDRip::Cluster::ExecFlowFrontend"
"Video::DVDRip::Cluster::JobPlanner" "Video::DVDRip::Cluster::Master"
"Video::DVDRip::Cluster::Node" "Video::DVDRip::Cluster::PSU"
"Video::DVDRip::Cluster::Pipe" "Video::DVDRip::Cluster::Project"
"Video::DVDRip::Cluster::Scheduler" "Video::DVDRip::Cluster::Title"
"Video::DVDRip::Cluster::Webserver" "Video::DVDRip::Config"
"Video::DVDRip::Content" "Video::DVDRip::Convert" "Video::DVDRip::Depend"
"Video::DVDRip::FilterList" "Video::DVDRip::FilterSettings"
"Video::DVDRip::GUI::Base" "Video::DVDRip::GUI::BitrateCalc"
"Video::DVDRip::GUI::Cluster::Control" "Video::DVDRip::GUI::Cluster::Node"
"Video::DVDRip::GUI::Cluster::Title" "Video::DVDRip::GUI::Context"
"Video::DVDRip::GUI::Depend" "Video::DVDRip::GUI::ExecFlow"
"Video::DVDRip::GUI::Filters" "Video::DVDRip::GUI::FormFactory::ClipImage"
"Video::DVDRip::GUI::FormFactory::SubtitlePreviews"
"Video::DVDRip::GUI::Main" "Video::DVDRip::GUI::MultiAudio"
"Video::DVDRip::GUI::Pipe" "Video::DVDRip::GUI::Preferences"
"Video::DVDRip::GUI::Preview" "Video::DVDRip::GUI::Progress"
"Video::DVDRip::GUI::Project::ClipZoom"
"Video::DVDRip::GUI::Project::Logging"
"Video::DVDRip::GUI::Project::Storage"
"Video::DVDRip::GUI::Project::Subtitle"
"Video::DVDRip::GUI::Project::Title"
"Video::DVDRip::GUI::Project::Transcode" "Video::DVDRip::GUI::Rules"
"Video::DVDRip::GUI::ZoomCalculator" "Video::DVDRip::InfoFile"
"Video::DVDRip::JobPlanner" "Video::DVDRip::Logger" "Video::DVDRip::PSU"
"Video::DVDRip::Preset" "Video::DVDRip::Probe" "Video::DVDRip::Project"
"Video::DVDRip::SrtxFile" "Video::DVDRip::Subtitle"
"Video::DVDRip::Term::ExitTask" "Video::DVDRip::Term::Main"
"Video::DVDRip::Term::Progress" "Video::DVDRip::Title"
"Video::DVDRip::TranscodeRC" "WWW::RobotRules"
"WWW::RobotRules::AnyDBM_File" "XML::Parser" "XML::Parser::Expat"
"XML::Parser::Style::Debug" "XML::Parser::Style::Objects"
"XML::Parser::Style::Stream" "XML::Parser::Style::Subs"
"XML::Parser::Style::Tree" "XML::Twig" "XML::Twig::XPath" "XML::Writer"
"XS::APItest" "XS::Typemap" "XSLoader" "YAML" "YAML::Base" "YAML::Dumper"
"YAML::Dumper::Base" "YAML::Error" "YAML::Loader" "YAML::Loader::Base"
"YAML::Marshall" "YAML::Node" "YAML::Tag" "YAML::Types" "a2p" "attributes"
"attrs" "autouse" "base" "bigint" "bignum" "bigrat" "blib" "bytes"
"charnames" "constant" "diagnostics" "encoding" "fields" "filetest" "if"
"integer" "less" "lib" "locale" "lwpcook" "lwptut" "open.pod" "ops"
"overload" "perl" "perl5004delta" "perl5005delta" "perl561delta"
"perl56delta" "perl570delta" "perl571delta" "perl572delta" "perl573delta"
"perl581delta" "perl582delta" "perl583delta" "perl584delta" "perl585delta"
"perl586delta" "perl587delta" "perl588delta" "perl58delta" "perlaix"
"perlamiga" "perlapi" "perlapio" "perlapollo" "perlartistic" "perlbeos"
"perlbook" "perlboot" "perlbot" "perlbs2000" "perlcall" "perlce"
"perlcheat" "perlclib" "perlcn" "perlcompile" "perlcygwin" "perldata"
"perldbmfilter" "perldebguts" "perldebtut" "perldebug" "perldelta"
"perldgux" "perldiag" "perldoc" "perldos" "perldsc" "perlebcdic"
"perlembed" "perlepoc" "perlfaq" "perlfaq1" "perlfaq2" "perlfaq3"
"perlfaq4" "perlfaq5" "perlfaq6" "perlfaq7" "perlfaq8" "perlfaq9"
"perlfilter" "perlfork" "perlform" "perlfreebsd" "perlfunc" "perlglossary"
"perlgpl" "perlguts" "perlhack" "perlhist" "perlhpux" "perlhurd"
"perlintern" "perlintro" "perliol" "perlipc" "perlirix" "perljp" "perlko"
"perllexwarn" "perllinux" "perllocal" "perllocale" "perllol" "perlmachten"
"perlmacos" "perlmacosx" "perlmint" "perlmod" "perlmodinstall" "perlmodlib"
"perlmodstyle" "perlmpeix" "perlnetware" "perlnewmod" "perlnumber"
"perlobj" "perlop" "perlopenbsd" "perlopentut" "perlos2" "perlos390"
"perlos400" "perlothrtut" "perlpacktut" "perlplan9" "perlpod" "perlpodspec"
"perlport" "perlqnx" "perlre" "perlref" "perlreftut" "perlrequick"
"perlreref" "perlretut" "perlrun" "perlsec" "perlsolaris" "perlstyle"
"perlsub" "perlsyn" "perlthrtut" "perltie" "perltoc" "perltodo" "perltooc"
"perltoot" "perltrap" "perltru64" "perltw" "perlunicode" "perluniintro"
"perlutil" "perluts" "perlvar" "perlvmesa" "perlvms" "perlvos" "perlwin32"
"perlxs" "perlxstut" "re" "sigtrap" "sort.pod" "strict" "subs" "threads"
"threads::shared" "utf8" "vars" "vmsish" "warnings" "warnings::register"))
