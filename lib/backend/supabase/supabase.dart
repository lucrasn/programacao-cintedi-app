import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://uwszrbdongrpxfaqvjtp.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3c3pyYmRvbmdycHhmYXF2anRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU5NjYxMzQsImV4cCI6MjAzMTU0MjEzNH0.n-0m97iQMz6dVYIRuJnKDpMVcJ1qPDboF3G1--WKXgU';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
