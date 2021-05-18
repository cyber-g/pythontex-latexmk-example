add_cus_dep('pytxcode', 'tex', 0, 'pythontex');
sub pythontex { return system("pythontex \"$_[0]\""); }

$clean_ext = "pytxcode";