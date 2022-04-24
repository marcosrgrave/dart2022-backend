abstract class GenericService<Type> {
  Type getObject(int id);
  List<Type> getAll();
  bool save(Type value);
  bool delete(int id);
}
