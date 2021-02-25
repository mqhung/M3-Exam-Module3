package service;
import java.util.List;

public interface IGeneralDAO <T>{
    void insert(T t);
    T selectProductByID(int id);
    List<T> selectProductByName(String inputSearch);
    List<T> selectAllProduct();
    boolean delete(int id);
    boolean update(T t);
}
