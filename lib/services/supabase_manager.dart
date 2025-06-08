import 'package:supabase_flutter/supabase_flutter.dart';

// >>> Ganti berikut dengan kredensial Supabase project‑mu <<<
const supabaseUrl = 'https://wwwocxvpegnsganyeibh.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind3d29jeHZwZWduc2dhbnllaWJoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg3ODYzMTIsImV4cCI6MjA2NDM2MjMxMn0.7iSoucqicmaYPCofR01gkwwe48C_jKWNKEqwh8ZAefg';

class SupabaseManager {
  static Future<void> init() async {
    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  }

  static SupabaseClient get client => Supabase.instance.client;
}
