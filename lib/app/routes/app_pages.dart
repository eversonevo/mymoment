
import 'package:get/route_manager.dart';
import 'package:my_moment/app/UI/home/android/home2/home_page.dart';
import 'package:my_moment/app/UI/home/android/home_view.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomeView(),
    ),
    
    GetPage(name: Routes.HOME2, page: () => HomePage()),//,binding: MatriculasLigacao()),
    //GetPage(name: Rotas.CADASTROLIVROS, page: () => PaginaLivros(),binding: LivrosLigacao()),
    //GetPage(name: Rotas.EMPRESTIMOS, page: () => PaginaEmprestimos(),binding: EmprestimosLigacao()),
    //GetPage(name: Rotas.DADOSLIVROS, page: () => DadosLivros(),binding: DadosLivrosLigacao()),
  ];
}
