import LibraryAPIService from '@api/LibraryAPI';
import useAdminStore from '@store/AdminStore';
import useAuthStore from '@store/AuthStore';
import useOfficeStore from '@store/OfficeStore';
import { useNavigate } from 'react-router-dom';

export const useHandleLogin = ({ setError }: UseHandleLoginProps) => {
  const navigate = useNavigate();
  const { login, createOffice } = LibraryAPIService();
  const auth = useAuthStore.getState();

  const useLogin = async ({
    email,
    password,
    office,
    isRegister
  }: UseLoginProps) => {
    const data = await login({ email, password });
    if (data?.message === 'Invalid Credentials') {
      setError(data.message);
      return;
    }
    const Admin = {
      name: data?.name || '',
      email: data?.email || '',
      role: data?.role || '',
      accessToken: data?.accessToken || '',
      actions: data?.actions || {
        menu: []
      }
    };
    const { setAdmin } = useAdminStore.getState();
    const { setOffice } = useOfficeStore.getState();

    if (!isRegister) {
      await createOffice({
        office: {
          name: office
        }
      });
    }
    setAdmin({ admin: Admin });
    auth.login();
    setOffice({ office });
    navigate('/menu');
  };

  return { useLogin };
};

export default useHandleLogin;
