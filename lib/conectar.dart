import 'dart:developer';

import 'package:supabase/supabase.dart';

const supabaseUrl = 'https://xrhyhsbetlnzksauwrvi.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzODA3NTI4MywiZXhwIjoxOTUzNjUxMjgzfQ.gsz31qxeQ_h6R_93rthZwynvz1i8jNrXLz30JaFprqA';

class Conecta {
  final client = SupabaseClient(supabaseUrl, supabaseKey);

/*
  Future updatePaciente(int idPaciente, String cidade) async {
    await client
        .from('pacientes')
        .update({'cidade': cidade})
        .eq('id', idPaciente)
        .execute();
  }

  Future<List<ClassVotos>> getVotos() async {
    final response = await client
        .from('votos')
        .select()
        .order('votosNome', ascending: true)
        .execute();
    if (response.error == null) {
      final dataList = response.data as List;
      return (dataList.map((map) => ClassVotos.fromJson(map)).toList());
    }
    return [];
  }

  rpc8(String nome) async {
    final response =
        await client.rpc('temregistro2', params: {'nome': nome}).execute();
    return response.data;
  }

*/

  Future<GotrueSessionResponse> signInExistingUser(
      String email, String password) async {
    final response = await client.auth.signIn(
      email: email,
      password: password,
    );
    log('Retorno Error: ${response.error.toString()}');
    log('Retorno Data: ${response.data.toString()}');
    log('Retorno Response: ${response.toString()}');
    log(response.data.toString());
    log(response.error.toString());
    return response;
  }

  Future<GotrueSessionResponse> signInExistingUser2(
      String email, String password) async {
    final response = await client.auth.signUp(email, password);
    log('Retorno Error: ${response.error.toString()}');
    log('Retorno Data: ${response.data.toString()}');
    log('Retorno Response: ${response.toString()}');
    log(response.data.toString());
    log(response.error.toString());
    return response;
  }

  Future<GotrueSessionResponse> signInEmail(String email) async {
    final response = await client.auth.signIn(
      email: email,
    );
    log('Retorno Error: ${response.error.toString()}');
    log('Retorno Data: ${response.data.toString()}');
    log('Retorno Response: ${response.toString()}');
    log('Retorno User: ${response.user.toString()}');
    log('Retorno Url: ${response.url.toString()}');
    log('Retorno Provider: ${response.provider.toString()}');
    final session = client.auth.session();
    log('Retorno Provider: ${session?.user.toString()}');
    log('Retorno Provider: ${session?.tokenType.toString()}');
    log('Retorno Provider: ${session?.refreshToken.toString()}');
    log('Retorno Provider: ${session?.providerToken.toString()}');
    log('Retorno Provider: ${session?.persistSessionString.toString()}');
    log('Retorno Provider: ${session?.expiresIn.toString()}');
    log('Retorno Provider: ${session?.expiresAt.toString()}');
    log('Retorno Provider: ${session?.accessToken.toString()}');
    return response;
  }

// registrar
  Future<GotrueSessionResponse> signInEmail2(
      String email, String password) async {
    final response = await client.auth.signUp(email, password);
    log('Retorno Error: ${response.error.toString()}');
    log('Retorno Data: ${response.data.toString()}');
    log('Retorno Response: ${response.toString()}');
    log('Retorno User: ${response.user.toString()}');
    log('Retorno Url: ${response.url.toString()}');
    log('Retorno Provider: ${response.provider.toString()}');
    final session = client.auth.session();
    log('Retorno Provider: ${session?.user.toString()}');
    log('Retorno Provider: ${session?.tokenType.toString()}');
    log('Retorno Provider: ${session?.refreshToken.toString()}');
    log('Retorno Provider: ${session?.providerToken.toString()}');
    log('Retorno Provider: ${session?.persistSessionString.toString()}');
    log('Retorno Provider: ${session?.expiresIn.toString()}');
    log('Retorno Provider: ${session?.expiresAt.toString()}');
    log('Retorno Provider: ${session?.accessToken.toString()}');
    return response;
  }

  Future<GotrueSessionResponse> signInEmail3(
      String email, String password) async {
    final response = await client.auth.signUp(email, password);
    log('Retorno Error: ${response.error.toString()}');
    log('Retorno Data: ${response.data.toString()}');
    log('Retorno Response: ${response.toString()}');
    log('Retorno User: ${response.user.toString()}');
    log('Retorno Url: ${response.url.toString()}');
    log('Retorno Provider: ${response.provider.toString()}');
    final session = client.auth.session();
    log('Retorno Provider: ${session?.user.toString()}');
    log('Retorno Provider: ${session?.tokenType.toString()}');
    log('Retorno Provider: ${session?.refreshToken.toString()}');
    log('Retorno Provider: ${session?.providerToken.toString()}');
    log('Retorno Provider: ${session?.persistSessionString.toString()}');
    log('Retorno Provider: ${session?.expiresIn.toString()}');
    log('Retorno Provider: ${session?.expiresAt.toString()}');
    log('Retorno Provider: ${session?.accessToken.toString()}');
    return response;
  }

  Future usuario() async {
    final session = client.auth.session();
    log('Retorno Provider: ${session?.user.toString()}');
    log('Retorno Provider: ${session?.tokenType.toString()}');
    log('Retorno Provider: ${session?.refreshToken.toString()}');
    log('Retorno Provider: ${session?.providerToken.toString()}');
    log('Retorno Provider: ${session?.persistSessionString.toString()}');
    log('Retorno Provider: ${session?.expiresIn.toString()}');
    log('Retorno Provider: ${session?.expiresAt.toString()}');
    log('Retorno Provider: ${session?.accessToken.toString()}');
    return session;
  }
}

//    log('Retorno Count: ${response.count.toString()}');
//    log('Retorno Error: ${response.error.toString()}');
//    log('Retorno Status: ${response.status.toString()}');
//    log('Retorno Data: ${response.data.toString()}');
//    log('Retorno Response: ${response.toString()}');
//    log(response.data.toString());
//    log(response.error.toString());
//    log(response.status.toString());
//    log(response.data.toString());
//    log(response.error.toString());
//    log(response.status.toString());

