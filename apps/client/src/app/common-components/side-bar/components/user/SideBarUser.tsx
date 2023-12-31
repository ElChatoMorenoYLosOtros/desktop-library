import Button from '@common-components/Button';
import adminLogo from '@images/admin.png';
import useAdminStore from '@store/AdminStore';
import { useNavigate } from 'react-router-dom';

function SideBarUser() {
  const { admin } = useAdminStore();
  const navigate = useNavigate();

  return (
    <div
      className='text-[#e0e1dd] font-roboto-mono flex w-full mt-5
  justify-center place-items-center gap-5 text-[18px] font-bold'
    >
      <Button
        onClick={() => navigate('/admin')}
        disabled={admin.role !== 'admin'}
      >
        <img src={adminLogo} className='w-[90px] h-[90px]' alt='Profile' />
      </Button>
      <div>
        <h3>{admin.name === '' ? 'username' : admin.name}</h3>
        <h3 className='text-[#e0e1dd]/70'>
          {admin.role === '' ? 'rol' : admin.role}
        </h3>
      </div>
    </div>
  );
}

export default SideBarUser;
