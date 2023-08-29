import LibraryAPIService from '@api/LibraryAPI';
import useAdminStore from '@store/AdminStore';
import { useNavigate } from 'react-router-dom';

export const useHandleLogin = ({ setError }: UseHandleLoginProps) => {
  const navigate = useNavigate();
  const { login } = LibraryAPIService();

  const useLogin = async ({ email, password }: HandleLoginSubmitProps) => {
    const data = await login({ email, password });
    if (data?.message === 'Invalid Credentials') {
      setError(data.message);
      return;
    }
    const Admin = {
      name: data?.name || '',
      email: data?.email || '',
      role: data?.role || '',
      accessToken: data?.accessToken || ''
    };
    const { setAdmin } = useAdminStore.getState();
    setAdmin({ admin: Admin });
    navigate('/menu');
  };

  return { useLogin };
};

export default useHandleLogin;
